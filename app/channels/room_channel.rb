class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
  end

  def speak(data)
    Message.create!(content: data['message'])
    ActionCable.server.broadcast 'room_channel', data['message']
  end
end
