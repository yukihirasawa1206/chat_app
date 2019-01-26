require 'rails_helper'

RSpec.describe "Rooms", type: :request do
  describe "GET/root_path" do
    it "works" do
      get root_path
      expect(response).to have_http_status(200)
    end
  end
end