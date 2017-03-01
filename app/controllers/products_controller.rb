class ProductsController < ApplicationController
    def index
      @products = Product.all
    end

    def show
        @product = Product.find_by(id: params[:id])
        @bookmark = Bookmark.find_by(product_id: @product.id)
    end

    def search
      @products = Product.where('name LIKE ? OR title LIKE ? OR description LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%").all
      render '/products/search'
    end

end
