# frozen_string_literal: true

module API
  module V1
    class Base < Grape::API
      mount API::V1::Events
      mount API::V1::Plants
      mount API::V1::Positions
      mount API::V1::Members
    end
  end
end
