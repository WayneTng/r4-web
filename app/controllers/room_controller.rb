class RoomController < ApplicationController
  def index
    @message = Message.where(receivers: ['3P8WdkCWhMGfvY', '3P8WeHI6xEIIp2']).all
  end
end
