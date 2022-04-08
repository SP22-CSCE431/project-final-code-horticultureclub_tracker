import React, { Component, useState, useEffect, useLayoutEffect} from 'react'
import { Calendar, Views, momentLocalizer } from 'react-big-calendar'
import moment from 'moment'
import './styles.scss'
import RemoveIcon from 'images/remove.png'

const localizer = momentLocalizer(moment)

let allViews = Object.keys(Views).map(k => Views[k])


const EventCalendar = () => {

   const [events, setEvents] = useState(); // has events for the calendar with their format
   const [showPopover, setShowPopover] = useState(false); // toggles the event popover

   // translates rails event to javascript date
   function formatEvent(event) {

      // Pull out start/end dates and start/end times (The times in the database don't have correct dates on them for some reason)
      const { start_date, end_date, start_time, end_time } = event;
      const startDate   = new Date(start_date)
      startDate.setDate(startDate.getDate() + 1)
      const endDate     = new Date(end_date)
      endDate.setDate(endDate.getDate() + 1)
      const startTime   = new Date(start_time)
      const endTime     = new Date(end_time)

      // Generate new start and end dates as composite of above date and times
      const start = new Date(
         startDate.getFullYear(),
         startDate.getMonth(),
         startDate.getDate(),
         startTime.getHours(),
         startTime.getMinutes(),
         startTime.getSeconds(),
      )
      const end = new Date(
         endDate.getFullYear(),
         endDate.getMonth(),
         endDate.getDate(),
         endTime.getHours(),
         endTime.getMinutes(),
         endTime.getSeconds(),
      )

      // Generate formatted event
      const formatedEvent = {
         title : event.event_type,
         start, 
         end
      }

      return formatedEvent;

   }

   async function updateEvents(data) {
      let tempEvents = [];
      data.forEach(event => {
         let currEvent = formatEvent(event);
         tempEvents.push({ title: currEvent.title, start: currEvent.start, end: currEvent.end, description : event.description, points: event.points });
      })
      setEvents(tempEvents);
      // console.log(tempEvents);
   }

   useEffect(async () => {
      const getEvents = async () => {
         try {
            const response = await fetch('/api/v1/events');
            const json = await response.json();
            await updateEvents(json);
         }catch(error) { console.log(error); }
      }

      // updates the colors of the cells on the calendar 
      async function setColors() {
         const eventCells = document.querySelectorAll('div.rbc-event');
         for(let i = 0 ; i < eventCells.length; i++) {
             switch (eventCells[i].textContent) {
                 case 'Volunteer Day':
                    if (eventCells[i].classList.contains('event-volunteerDay')) return;
                     eventCells[i].classList += ' event-volunteerDay';
                     break;
                 case 'Monthly Meeting':
                  if (eventCells[i].classList.contains('event-monthlyMeeting')) return;
                     eventCells[i].classList += ' event-monthlyMeeting';
                     break;
                 case 'Conference':
                  if (eventCells[i].classList.contains('event-conference')) return;
                     eventCells[i].classList += ' event-conference';
                     break;
                 case 'Plant Sale':
                  if (eventCells[i].classList.contains('event-plantSale')) return;
                     eventCells[i].classList += ' event-plantSale';
                     break;
                 case 'Social':
                  if (eventCells[i].classList.contains('event-social')) return;
                     eventCells[i].classList += ' event-social';
                     break;
             }
         }
      }

      await getEvents();
      setColors();
      window.setInterval(setColors , 1000);

   }, []);

   const weekDays = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

   function getFormatedDate(date) {
      return `${weekDays[date.getDay()]} ${date.toLocaleString()}`;
   }

   const eventSelectedEvent = (e) => {
      document.querySelector('h3.event-popover-title').textContent = `${e.title}`;
      let start = getFormatedDate(e.start);
      let end = getFormatedDate(e.end);
      document.querySelector('h5.event-popover-start').textContent = `Start: ${start}`;
      document.querySelector('h5.event-popover-end').textContent = `End: ${end}`;
      document.querySelector('h5.event-popover-description').textContent = `Details: ${e.description}`;
      document.querySelector('h5.event-popover-points').textContent = `Points: ${e.points}`;
      setShowPopover(true);
   }


   // Event {
   //    title: string,
   //    start: Date,
   //    end: Date,
   //    allDay?: boolean
   //    resource?: any,
   // }

   // const events = [
   //    {
   //       id: 0,
   //       title: 'All Day Event very long title',
   //       allDay: true,
   //       start: new Date(2022, 1, 10),
   //       end: new Date(2022, 1, 10),
   //    },
   //    {
   //       id: 1,
   //       title: 'Long Event',
   //       start: new Date(2022, 1, 6),
   //       end: new Date(2022, 1, 9),
   //    },
   // ]

   return (  
      <div className="calendar">
         <Calendar
            events={events}
            views={allViews}
            step={60}
            showMultiDayTimes
            // max={dates.add(dates.endOf(new Date(2015, 17, 1), 'day'), -1, 'hours')}
            defaultDate={new Date()}
            // components={{
            //    timeSlotWrapper: ColoredDateCellWrapper,
            // }}
            localizer={localizer}
            style = {{ height: 500 }}
            onSelectEvent={(e) => eventSelectedEvent(e)}
         />
         <div className={`event-popover event-popover-${showPopover == true ? 'show' : 'hide'}`}>
            <div className='event-popover-head'>
               <h3 className='event-popover-title'></h3>
               <img src={RemoveIcon} className={'remove-icon'} onClick={() => {setShowPopover(false)}}></img>
            </div>
            <div className='event-popover-start-end'>
               <h5 className='event-popover-start'></h5>
               <h5 className='event-popover-end'></h5>
            </div>
            <h5 className='event-popover-description'></h5>
            <h5 className='event-popover-points'></h5>
         </div>
      </div>
   );
}
class App extends Component {

   render() {
      return (
         <div>
            <EventCalendar />
         </div>
      )
   }
}

export default App