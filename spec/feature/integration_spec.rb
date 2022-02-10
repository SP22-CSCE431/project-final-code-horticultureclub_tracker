require 'rails_helper'

RSpec.describe 'Creating an event', type: :feature do
    scenario 'valid inputs' do
        visit new_event_path
        fill_in 'Event type', with: 'Monthly Meeting'
        fill_in 'Description', with: 'Monthly meeting for February'
        fill_in 'Points', with: 10
        select '2022', :from => 'event_start_date_1i'
        select 'February', :from => 'event_start_date_2i'
        select '14', :from => 'event_start_date_3i'
        select '2022', :from => 'event_end_date_1i'
        select 'February', :from => 'event_end_date_2i'
        select '14', :from => 'event_end_date_3i'
        click_on 'Create Event'
        # add tests for times
        expect(page).to have_content('Monthly Meeting')
        expect(page).to have_content('Monthly meeting for February')
        expect(page).to have_content('10')
        expect(page).to have_content('2022-02-14')
    end
end

RSpec.describe 'Creating a member', type: :feature do
    scenario 'valid inputs' do
        visit new_member_path
        fill_in 'Name', with: 'John Smith'
        click_on 'Create Member'
        expect(page).to have_content('John Smith')
    end
end
Rspec.describe 'Creating a point object', type: :feature do
    scenario 'valid inputs' do
        visit new_point_path
        fill_in 'Member', with: '1'
        fill_in 'Event', with: '5'
        fill_in 'Points', with: '10'
        click_on 'Create Point'
        expect(page).to have_content('1')
        expect(page).to have_content('5')
        expect(page).to have_content('10')
    end 
end