class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @shops = @user.shops

    favorites = Favorite.where(user_id: current_user.id).pluck(:shop_id)  # ログイン中のユーザーのお気に入りのshop_idカラムを取得
    @favorite_list = Shop.find(favorites)     # shopsテーブルから、お気に入り登録済みのレコードを取得
  end
end
