class FavoritesController < ApplicationController
  before_action :set_shop
  before_action :authenticate_user!   # ログイン中のユーザーのみに許可（未ログインなら、ログイン画面へ移動）

  # お気に入り登録
  def create
    if Favorite.create(user_id: @user.id,shop_id:@shop.id)
      flash[:success] = "登録完了しました！"
    else
        redirect_to root_path
    end
  end
  # お気に入り削除
  def destroy
    if favorite=Favorite.find_by(user_id: @user.id,shop_id:@shop.id)
      favorite.delete
      flash[:success] = "登録解除しました！"
    else
      redirect_to root_path
    end
  end

  private
  def set_shop
    @user = current_user
    @shop = Shop.find(params[:shop_id])
  end
end
