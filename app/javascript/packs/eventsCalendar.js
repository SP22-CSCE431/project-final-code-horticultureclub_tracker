
const eventCells = document.querySelectorAll('div.rbc-event');
console.log(`eventCells: ${eventCells}`)
console.log(eventCells.length)
for(let i = 0 ; i < eventCells.length; i++) {
    console.log(`event: ${eventCells[i]}`)
    console.log(`event.textContent: ${eventCells[i].textContent}`)
    switch (eventCells[i].textContent) {
        case 'Volunteer Day':
            event.classList += 'event-volunteerDay';
            break;
        case 'Monthly Meeting':
            event.classList += 'event-monthlyMeeting';
            break;
        case 'Conference':
            event.classList += 'event-conference';
            break;
        case 'Plant Sale':
            event.classList += 'event-plantSale';
            break;
        case 'Social':
            event.classList += 'event-social';
            break;
    }
}