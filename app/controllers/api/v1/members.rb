# frozen_string_literal: true

module API
  module V1
    class Members < Grape::API
      include API::V1::Defaults
      resource :members do
        desc 'Return all members'
        get '' do
          Member.all
        end
        desc 'Return a member'
        params do
          requires :id, type: Integer, desc: 'ID of the member'
        end
        get ':id' do
          Member.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
