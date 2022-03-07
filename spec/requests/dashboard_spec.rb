# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('Dashboards', type: :request) do
  describe 'GET /index' do
    it 'returns http success' do
      get '/dashboard'
      expect(response).to(have_http_status(302))
    end
  end
end
