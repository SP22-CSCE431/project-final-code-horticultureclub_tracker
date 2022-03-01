# frozen_string_literal: true

class PositionSerializer < ActiveModel::Serializer
  attributes :id, :position_name, :member_id
end
