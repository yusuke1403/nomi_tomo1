class MessagesController < ApplicationController

  def index
    @message = Message.new
    @shop = Shop.find(params[:shop_id])
    @room = Room.find(params[:room_id])
    @rooms = Room.all.order(:id)
    @messages = @room.messages.includes(:user)
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to action: 'index'
    else
      @messages = @room.messages.includes(:user)
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
end