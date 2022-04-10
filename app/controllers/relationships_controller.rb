class RelationshipsController < ApplicationController
  before_action :authenticate_user!
  def create
    # フォロー・フォロワー機能修正箇所
    # findするパラメータが違う
    # - user = User.find(params[:id])
    user = User.find(params[:user_id])
    current_user.follow(user)
		redirect_to request.referer
  end
  
  def destroy
    # フォロー・フォロワー機能修正箇所
    # findするパラメータが違う
    # - user = User.find(params[:id])
    user = User.find(params[:user_id])
    current_user.unfollow(user)
		redirect_to request.referer
  end
  
  def followings
    # フォロー・フォロワー機能修正箇所
    # findするパラメータが違う
    # - user = User.find(params[:id])
    user = User.find(params[:user_id])
		@users = user.followings
  end

  def followers
    # フォロー・フォロワー機能修正箇所
    # findするパラメータが違う
    # - user = User.find(params[:id])
    user = User.find(params[:user_id])
		@users = user.followers
  end
end
