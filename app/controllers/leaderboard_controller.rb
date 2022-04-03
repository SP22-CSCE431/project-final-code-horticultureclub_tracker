# frozen_string_literal: true

class LeaderboardController < ApplicationController
  before_action :authenticate_admin!
  def index
    # @members = Point
    #            .joins('INNER JOIN members ON members.id=points.member_id')
    #            .joins('INNER JOIN events ON events.id=points.event_id')
    #            .group('members.name, points.member_id, events.points')
    #            .select('members.name, points.member_id as id, sum(events.points) as points')
    #            .order('points DESC')
    @members = Event
               .joins('INNER JOIN points ON events.id=points.event_id')
               .joins('INNER JOIN members ON members.id=points.member_id')
               .group('points.member_id')
               .sum('events.points')
               .sort_by { |_key, value| value }.reverse
  end
end
