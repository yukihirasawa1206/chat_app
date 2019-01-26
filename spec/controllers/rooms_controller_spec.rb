require 'rails_helper'

RSpec.describe RoomsController, type: :controller do
  
  it "responds successfully" do
    get :show
    expect(response).to be_success
  end

  it "returns a 200 status" do
    get :show
    expect(response).to have_http_status "200"
  end
end
