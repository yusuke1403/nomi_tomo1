class ShopsController < ApplicationController
  before_action :set_shop, only: [:show]
  before_action :authenticate_user!

  def index
    @user = current_user
    # binding.pry
    @shops = Shop.all.includes(:images)
  end

  def show
  end

  private
    def set_shop
      @shop = Shop.find(params[:id])
    end

    def shop_params
      params.require(:shop).permit(:name, :tel, :address)
    end
end
