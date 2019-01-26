require 'rails_helper'

RSpec.describe Message, type: :model do
  let(:message){FactoryBot.create(:message)}
  
  it "should have a valid factory" do
    expect(message).to be_valid
  end
  
  it "is a invalid message with more than 50 characters" do
    message.content = "a" * 51
    message.valid?
    expect(message.errors[:content]).to include("is too long (maximum is 50 characters)")
  end
end
