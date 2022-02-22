class LeaderboardController < ApplicationController
  def index

    @members = Point
    .joins("INNER JOIN members ON members.id=points.member_id")
    .group('members.name, points.member_id, points.points')
    .select('members.name, points.member_id as id, sum(points.points) as points')
    .order('points DESC')    
    
  end
end
