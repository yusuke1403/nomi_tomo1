class RoomsController < ApplicationController
  before_action :set_shop

  def index
    @rooms = Room.all.order(:id)
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to :index
    else
      render :new
    end
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to :index
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end

  def room_params
    params.require(:room).permit(:name, user_ids: []).merge(shop_id: params[:shop_id])
  end
end
