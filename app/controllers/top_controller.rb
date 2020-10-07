class TopController < ApplicationController
  before_action :move
  
  def index
  end

  private
  def move
    if user_signed_in?
      redirect_to  shops_path
    end
  end
end
