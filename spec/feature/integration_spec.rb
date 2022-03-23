# frozen_string_literal: true

require 'rails_helper'
require 'selenium-webdriver'

RSpec.describe('Creating an event', type: :feature) do
  before do
    Rails.application.env_config['devise.mapping'] = Devise.mappings[:admin]
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_user]
    visit (admin_google_oauth2_omniauth_authorize_path)
  end
  
  it 'valid inputs' do
    visit new_event_path
    select 'Monthly Meeting', from: 'event_event_type'
    fill_in 'Description', with: 'Monthly meeting for February'
    fill_in 'Points', with: 10
    select '2022', from: 'event_start_date_1i'
    select 'February', from: 'event_start_date_2i'
    select '14', from: 'event_start_date_3i'
    select '2022', from: 'event_end_date_1i'
    select 'February', from: 'event_end_date_2i'
    select '14', from: 'event_end_date_3i'
    click_on 'Create Event'
    # add tests for times
    expect(page).to(have_content('Monthly Meeting'))
    expect(page).to(have_content('Monthly meeting for February'))
    expect(page).to(have_content('10'))
    expect(page).to(have_content('2022-02-14'))
  end
end

RSpec.describe('Creating a member', type: :feature) do
  before do
    Rails.application.env_config['devise.mapping'] = Devise.mappings[:admin]
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_user]
    visit (admin_google_oauth2_omniauth_authorize_path)
  end
  it 'valid inputs' do
    visit new_member_path
    fill_in 'Name', with: 'John Smith'
    click_on 'Create Member'
    expect(page).to(have_content('John Smith'))
  end
end

RSpec.describe('Creating an admin', type: :feature) do
  before do
    Rails.application.env_config['devise.mapping'] = Devise.mappings[:admin]
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_user]
    visit (admin_google_oauth2_omniauth_authorize_path)
  end
  it 'valid inputs' do
    visit new_eligible_admin_path
    fill_in 'Email', with: 'dylanharden3@tamu.edu'
    click_on 'Create Eligible admin'
    expect(page).to(have_content('dylanharden3@tamu.edu'))
  end
end

RSpec.describe('Creating a plant', type: :feature) do
  before do
    Rails.application.env_config['devise.mapping'] = Devise.mappings[:admin]
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_user]
    visit (admin_google_oauth2_omniauth_authorize_path)
  end
  it 'valid inputs' do
    visit new_plant_path
    fill_in 'Name', with: 'Rose'
    fill_in 'Price', with: '12.99'
    fill_in 'Description', with: 'Test description'
    select 'Flowers', from: 'plant_category'
    select 'Annual', from: 'plant_growth'
    fill_in 'Quantity', with: '5'
    click_on 'Create Plant'
    expect(page).to(have_content('Rose'))
    expect(page).to(have_content('12.99'))
    expect(page).to(have_content('Test description'))
    expect(page).to(have_content('Flowers'))
    expect(page).to(have_content('Annual'))
    expect(page).to(have_content('5'))
  end
end

RSpec.describe('Creating a point object', type: :feature) do
  before do
    Rails.application.env_config['devise.mapping'] = Devise.mappings[:admin]
    Rails.application.env_config['omniauth.auth'] = OmniAuth.config.mock_auth[:google_user]
    visit (admin_google_oauth2_omniauth_authorize_path)
  end
  it 'valid inputs' do
    visit new_member_path
    fill_in 'Name', with: 'John Smith'
    click_on 'Create Member'
    visit new_event_path
    select 'Monthly Meeting', from: 'event_event_type'
    fill_in 'Description', with: 'Monthly meeting for February'
    fill_in 'Points', with: 10
    select '2022', from: 'event_start_date_1i'
    select 'February', from: 'event_start_date_2i'
    select '14', from: 'event_start_date_3i'
    select '2022', from: 'event_end_date_1i'
    select 'February', from: 'event_end_date_2i'
    select '14', from: 'event_end_date_3i'
    click_on 'Create Event'
    visit new_point_path
    select 'John Smith', from: 'Member'
    select 'Monthly meeting for February', from: 'Event'
    click_on 'Create Point'
    expect(page).to(have_content('John Smith'))
    expect(page).to(have_content('Monthly meeting for February'))
  end
end
