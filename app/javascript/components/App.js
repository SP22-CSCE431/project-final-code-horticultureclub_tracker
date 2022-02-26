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


const EventCalendar = () => {

   // Event {
   //    title: string,
   //    start: Date,
   //    end: Date,
   //    allDay?: boolean
   //    resource?: any,
   // }

   const events = [
      {
         id: 0,
         title: 'All Day Event very long title',
         allDay: true,
         start: new Date(2022, 2, 10),
         end: new Date(2022, 2, 10),
      },
      {
         id: 1,
         title: 'Long Event',
         start: new Date(2022, 2, 6),
         end: new Date(2022, 2, 9),
      },
   ]

   return (  
      <div className="calendar">
         <Calendar
            events={events}
            views={allViews}
            step={60}
            showMultiDayTimes
            // max={dates.add(dates.endOf(new Date(2015, 17, 1), 'day'), -1, 'hours')}
            defaultDate={new Date(2022, 2, 15)}
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