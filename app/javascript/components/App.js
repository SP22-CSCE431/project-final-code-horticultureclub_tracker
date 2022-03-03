import React, { Component, useState, useEffect} from 'react'
import { Calendar, Views, momentLocalizer } from 'react-big-calendar'
import moment from 'moment'
import './styles.scss'

const localizer = momentLocalizer(moment)

let allViews = Object.keys(Views).map(k => Views[k])

const ColoredDateCellWrapper = ({ children }) =>
  React.cloneElement(React.Children.only(children), {
    style: {
      backgroundColor: 'lightblue',
    },
  })


const EventCalendar = () => {

   const [events, setEvents] = useState();

   // translates rails event to javascript date
   function formatEvent(event) {

      // Pull out start/end dates and start/end times (The times in the database don't have correct dates on them for some reason)
      const { start_date, end_date, start_time, end_time } = event;
      const startDate   = new Date(start_date)
      const endDate     = new Date(end_date)
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
                     
         tempEvents.push(formatEvent(event));

      })
      setEvents(tempEvents);
      console.log(tempEvents);
   }


   useEffect(async () => {
      const getEvents = async () => {
         try {
            const response = await fetch('/api/v1/events');
            const json = await response.json();
            await updateEvents(json);
         }catch(error) { console.log(error); }
      }
      await getEvents();
   }, []);


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
            defaultDate={new Date(2022, 1, 15)}
            components={{
               timeSlotWrapper: ColoredDateCellWrapper,
            }}
            localizer={localizer}
            style = {{ height: 500 }}
         />
      </div>
   );
}


class App extends Component {


   render() {
      return (
         <div>
            <h2>Calendar Component Below:</h2>
            <EventCalendar />
         </div>

      )
   }
}

export default App