# frozen_string_literal: true

require 'rails_helper'

OmniAuth.config.test_mode = true
RSpec.describe(Event, type: :model) do

  subject(:event) do
    described_class.new(event_type: 'Monthly Meeting', start_date: '2022-02-14', end_date: '2022-02-14', start_time: '5:00', end_time: '6:00', description: 'Monthly meeting for February', points: 10)
  end

  it 'is valid with all valid attributes' do
    expect(event).to(be_valid)
  end

  it 'is not valid without a type' do
    event.event_type = nil
    expect(event).not_to(be_valid)
  end

  it 'is not valid without a start_date' do
    event.start_date = nil
    expect(event).not_to(be_valid)
  end

  it 'is not valid without a description' do
    event.description = nil
    expect(event).not_to(be_valid)
  end

  it 'is not valid without points' do
    event.points = nil
    expect(event).not_to(be_valid)
  end

  it 'is valid without an end_date' do
    event.end_date = nil
    expect(event).to(be_valid)
  end

  it 'is valid without a start_time' do
    event.start_time = nil
    expect(event).to(be_valid)
  end

  it 'is valid without an end_time' do
    event.end_time = nil
    expect(event).to(be_valid)
  end
end

RSpec.describe(Member, type: :model) do
  subject(:member) do
    described_class.new(name: 'John Smith')
  end

  it 'is valid with all valid attributes' do
    expect(member).to(be_valid)
  end

  it 'is not valid without a type' do
    member.name = nil
    expect(member).not_to(be_valid)
  end
end

RSpec.describe(EligibleAdmin, type: :model) do
  subject(:eligible_admin) do
    described_class.new(email: 'dylanharden3@tamu.edu')
  end

  it 'is valid with all valid attributes' do
    expect(eligible_admin).to(be_valid)
  end

  it 'is not valid without an email' do
    eligible_admin.email = nil
    expect(eligible_admin).not_to(be_valid)
  end
end

RSpec.describe(Point, type: :model) do
  subject(:point) do
    described_class.new(member_id: 1, event_id: 5)
  end

  it 'is valid with all valid attributes' do
    expect(point).to(be_valid)
  end

  it 'is not valid without a member_id' do
    point.member_id = nil
    expect(point).not_to(be_valid)
  end

  it 'is not valid without an event_id' do
    point.event_id = nil
    expect(point).not_to(be_valid)
  end
end

RSpec.describe(Position, type: :model) do
  subject(:position) do
    described_class.new(member_id: 1, position_name: 'test position')
  end

  it 'is valid with all valid attributes' do
    expect(position).to(be_valid)
  end

  it 'is not valid without a member_id' do
    position.member_id = nil
    expect(position).not_to(be_valid)
  end

  it 'is not valid without a position_name' do
    position.position_name = nil
    expect(position).not_to(be_valid)
  end
end

RSpec.describe(Plant, type: :model) do
  subject(:plant) do
    described_class.new(name: 'test plant', price: 12.99, category: 'Annuals', quantity: 5)
  end

  it 'is valid with all valid attributes' do
    expect(plant).to(be_valid)
  end

  it 'is not valid without a name' do
    plant.name = nil
    expect(plant).not_to(be_valid)
  end

  it 'is not valid without a price' do
    plant.price = nil
    expect(plant).not_to(be_valid)
  end
  
  it 'is not valid without a category' do
    plant.category = nil
    expect(plant).not_to(be_valid)
  end

  it 'is not valid without a quantity' do
    plant.quantity = nil
    expect(plant).not_to(be_valid)
  end
end
