class ProductsController < ApplicationController
    def index
      @products = Product.all
      @ikeas = IkeaProduct.all
    end

    def show
        @product = Product.find_by(id: params[:id])
        @bookmark = Bookmark.find_by(product_id: @product.id)
    end

    def search
      @products = Product.where('name, title, description LIKE ?, ?, ?', "%#{params[:search]}%").all
      render '/products/search'
    end

    def upcsearch
      upc_api(params[:upcsearch])
      render '/products/upcsearch'
    end
end
