require 'rails_helper'

RSpec.describe Event, type: :model do
    subject do
        described_class.new(event_type: 'Monthly Meeting', start_date: '2022-02-14', end_date: '2022-02-14', start_time: '5:00', end_time: '6:00', description: 'Monthly meeting for February', points: 10)
    end

    it 'is valid with all valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a type' do
        subject.event_type = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a start_date' do
        subject.start_date = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without a description' do
        subject.description = nil
        expect(subject).not_to be_valid
    end

    it 'is not valid without points' do
        subject.points = nil
        expect(subject).not_to be_valid
    end

    it 'is valid without an end_date' do
        subject.end_date = nil
        expect(subject).to be_valid
    end

    it 'is valid without a start_time' do
        subject.start_time = nil
        expect(subject).to be_valid
    end
    it 'is valid without an end_time' do
        subject.end_time = nil
        expect(subject).to be_valid
    end
end

RSpec.describe Member, type: :model do
    subject do
        described_class.new(name: 'John Smith')
    end

    it 'is valid with all valid attributes' do
        expect(subject).to be_valid
    end

    it 'is not valid without a type' do
        subject.name = nil
        expect(subject).not_to be_valid
    end

end

RSpec.describe Point, type: :model do
    subject do
        described_class.new(member_id: 1, event_id: 5, points: 10)
    end

    it 'is valid with all valid attributes' do
        expect(subject).to be_valid
    end
    it 'is not valid without a member_id' do
        subject.member_id = nil
        expect(subject).not_to be_valid
    end
    it 'is not valid without an event_id' do
        subject.event_id = nil
        expect(subject).not_to be_valid
    end
    it 'is not valid without a point value' do
        subject.points = nil
        expect(subject).not_to be_valid
    end
end