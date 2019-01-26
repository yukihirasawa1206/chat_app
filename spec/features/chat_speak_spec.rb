require 'rails_helper'

RSpec.feature "ChatSpeaks", type: :feature do
  
  scenario "create messages in the ChatRoom", js: true do
    visit root_path
    expect{
      find('input[type=text]').set('test message')
      click_button "送信"
      expect(page).to have_content("test message")
    }.to change(Message, :count).by(1)
  end
end
