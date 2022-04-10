# frozen_string_literal: true

class HelpController < ApplicationController
	before_action :authenticate_admin!
	def help; end
end