# frozen_string_literal: true

class DashboardController < ApplicationController
  before_action :authenticate_admin!
  def index; end
end
