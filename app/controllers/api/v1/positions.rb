# frozen_string_literal: true

module API
  module V1
    class Positions < Grape::API
      include API::V1::Defaults
      resource :positions do
        desc 'Return all positions'
        get '' do
          Position.all
        end
        desc 'Return a position'
        params do
          requires :id, type: Integer, desc: 'ID of the position'
        end
        get ':id' do
          Position.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
