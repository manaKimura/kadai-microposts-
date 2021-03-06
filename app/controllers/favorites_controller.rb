class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.add_favorite(micropost)
    flash[:success] = 'お気に入りに追加しました'
    redirect_to favorites_user_path(current_user)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.remove_favorite(micropost)
    flash[:danger] = 'お気に入りから外しました'
    redirect_to favorites_user_path(current_user)
  end
end
