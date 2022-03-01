# frozen_string_literal: true

class LeaderboardController < ApplicationController
  def index
    @members = Point
               .joins('INNER JOIN members ON members.id=points.member_id')
               .joins('INNER JOIN events ON events.id=points.event_id')
               .group('members.name, points.member_id, events.points')
               .select('members.name, points.member_id as id, sum(events.points) as points')
               .order('points DESC')
  end
end
