class ProductsController < ApplicationController
    def index
      @products = Product.all
    end

    def show
        @product = Product.find_by(id: params[:id])
        @bookmark = Bookmark.find_by(product_id: @product.id)
    end

    def search
      @products = Product.where('title LIKE ?', "%#{params[:search]}%").all
      render '/products/search'
    end
end
