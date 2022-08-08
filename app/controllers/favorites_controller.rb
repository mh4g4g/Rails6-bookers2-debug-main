class FavoritesController < ApplicationController
  # def create
  #   @book_favorite = Favorite.new(user_id: current_user.id, book_id: params[:book_id])
  #   @book_favorite.save
  #   redirect_to book_path(params[:book_id]) 
  # end
  
  # def destroy
  #   @book_favorite = Favorite.find_by(user_id: current_user.id, book_id: params[:book_id])
  #   @book_favorite.destroy
  #   redirect_to book_path(params[:book_id]) 
  # end
  
  def create
    @book = Book.find(params[:book_id])
    @favorite = current_user.favorites.new(book_id: @book.id)
    @favorite.save
    # redirect_back fallback_location: book_path(current_user.id)
  end

  def destroy
    @book = Book.find(params[:book_id])
    @favorite = current_user.favorites.find_by(book_id: @book.id)
    @favorite.destroy
    # redirect_back fallback_location: book_path(current_user.id)
  end
end
