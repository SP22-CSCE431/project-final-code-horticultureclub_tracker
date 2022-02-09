require 'rails_helper'

RSpec.describe 'Creating an event', type: :feature do
    scenario 'valid inputs' do
        visit new_event_path
        fill_in 'Type', with: 'Monthly Meeting'
        fill_in 'Description', with: 'Monthly meeting for February'
        fill_in 'Points', with: 10
        select '2022', :from => 'event_startDate_1i'
        select 'February', :from => 'event_startDate_2i'
        select '14', :from => 'event_startDate_3i'
        select '2022', :from => 'event_endDate_1i'
        select 'February', :from => 'event_endDate_2i'
        select '14', :from => 'event_endDate_3i'
        # add tests for times
        expect(page).to have_content('Monthly Meeting')
        expect(page).to have_content('Monthly meeting for February')
        expect(page).to have_content('10')
        expect(page).to have_content('2022-02-14')
    end
end