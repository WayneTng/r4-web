# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    @room_channel = "room_#{current_user.id}"

    @cusor = Message.where(:receivers.include(current_user.id)).all.raw.changes(include_initial: true)

    if Thread.current[:current_user_id].nil?
      stream_from @room_channel

      Thread.new do
        Thread.current[:current_user_id] = current_user.id
        @cusor.each do |change|
          data = {
            operation: 'listing',
            status: 'success',
            data: change,
            message: 'New messages created'
          }

          ActionCable.server.broadcast @room_channel, data
        end
      end
    end
  end

  def unsubscribed
    @cusor.close if @cusor
  end

  def speak(data)
    message = Message.create(content: data['message'], sender_id: '3P8WdkCWhMGfvY', receivers: ['3P8WdkCWhMGfvY', '3P8WeHI6xEIIp2'], room_id: '3P8WeHIQJOb2dY' )
  end
end
