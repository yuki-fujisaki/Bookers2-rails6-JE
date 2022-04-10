class FavoritesController < ApplicationController
  def create
    # 非同期いいね機能修正箇所
    # データ探索がfindになっている
    # if !Favorite.find(book_id: params[:book_id], user_id: current_user.id).exists?
    if !Favorite.where(book_id: params[:book_id], user_id: current_user.id).exists?
      book = Book.find(params[:book_id])
      @favorite = current_user.favorites.new(book_id: book.id)
      @favorite.save
      render 'replace_btn'
    end
  end

  def destroy
    # 非同期いいね機能修正箇所
    # データ探索がfindになっている
    # if Favorite.find(book_id: params[:book_id], user_id: current_user.id).exists?
    if Favorite.where(book_id: params[:book_id], user_id: current_user.id).exists?
      book = Book.find(params[:book_id])
      @favorite = current_user.favorites.find_by(book_id: book.id)
      @favorite.destroy
      render 'replace_btn'
    end
  end
end
