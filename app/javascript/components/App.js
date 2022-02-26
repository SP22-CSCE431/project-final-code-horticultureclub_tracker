import React, { Component } from 'react'
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

// translates rails event to javascript date
function formatEvent(event) {

   const formatedEvent = {
      title : event.event_type,
      // some substring calculations to get the year month day
      start : new Date(event.start_date.substring(0,4),parseInt(event.start_date.substring(5,7))-1,event.start_date.substring(8,10)),
      end : new Date(event.end_date.substring(0,4),parseInt(event.end_date.substring(5,7))-1,event.end_date.substring(8,10))
   }

   return formatedEvent;

}

// get events from DB
function getEvents() {
   let events = [];
   try {
   fetch('/api/v1/events')
   .then(response => response.json())
   .then(data =>
      data.forEach(event => {
         
         events.push(formatEvent(event));

      })
   );
   }catch(error) { console.log(error); }
   
   console.log(events);

   return events;
}

const EventCalendar = () => {

   // Event {
   //    title: string,
   //    start: Date,
   //    end: Date,
   //    allDay?: boolean
   //    resource?: any,
   // }

   const events = getEvents();

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