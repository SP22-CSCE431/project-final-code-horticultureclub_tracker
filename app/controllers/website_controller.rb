# frozen_string_literal: true

class WebsiteController < ApplicationController
  def index
    @positions = Position.all
  end
end
