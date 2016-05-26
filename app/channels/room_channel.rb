# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Message.create(content: data['message'], sender: '3P8WdkCWhMGfvY', receivers: ['3P8WdkCWhMGfvY', '3P8WeHI6xEIIp2'], room_id: '3P8WeHIQJOb2dY' )
    ActionCable.server.broadcast 'room_channel', data
  end
end
