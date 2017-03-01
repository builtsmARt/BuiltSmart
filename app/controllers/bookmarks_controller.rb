class BookmarksController < ApplicationController
  def index
    require_user
    @bookmarks = current_user.bookmarks
  end

  def create
    require_user
    @bookmark=current_user.bookmarks.new(product_id: params[:product_id])
    if @bookmark.save
      redirect_to product_path(params[:product_id])
    else
      @errors = @bookmark.errors.full_messages
      redirect_to product_path(params[:product_id])
    end
  end

  def destroy
    require_user
    @bookmark = Bookmark.find_by(id: params[:id] )
    @product_id = @bookmark.product_id
    @bookmark.destroy
    redirect_to product_path(@product_id)
  end

end
