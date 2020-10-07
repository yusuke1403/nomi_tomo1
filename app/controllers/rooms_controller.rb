class RoomsController < ApplicationController
  before_action :set_shop

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    # binding.pry
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
