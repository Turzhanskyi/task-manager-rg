# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Projects', type: :request do
  describe 'GET /index' do
    before do
      create_list :project, 50
      get '/projects/'
    end

    it 'returns http :success' do
      expect(response).to have_http_status(:found)
    end
  end

  describe 'POST /create' do
    before { post '/projects/', params: { project: { name: 'Project #2' } } }

    it 'returns http :found' do
      expect(response).to have_http_status(:found)
    end

    it 'returns response body and http :ok' do
      follow_redirect!
      expect(response).to have_http_status(:ok)
    end
  end
end
