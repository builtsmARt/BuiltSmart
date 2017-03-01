class ReviewsController < ApplicationController
  def index
      find_product
      @reviews = @product.reviews
    end

    def show
      @review = Review.find_by(product_id: params[:product_id], id: params[:id])
    end

    def new
      find_product
      @review = @product.reviews.new
    end

    def create
      find_product
      @review = @product.reviews.new(review_params)
      if @review.save
        redirect_to product_path(params[:product_id])
      else
        @errors = @review.errors.full_messages
        render product_path(params[:product_id])
      end
    end

    def edit
      require_user
      find_product
      @review = @product.reviews.find_by(id: params[:id])
      authorize(@review.user_id)
    end

    def update
      find_product
      @review = @product.reviews.find_by(id: params[:id])
      if authorized?(@review.user_id) && @review.update(review_params)
        redirect_to product_path(@product.id)
      else
        @errors = @review.errors.full_messages
        redirect_to edit_product_review_path(params[:product_id])
      end
    end

    def destroy
      require_user
      find_product
      @review=Review.find_by(user_id: current_user.id, product_id: params[:product_id])
      @review.destroy
      redirect_to product_path(@product.id)
    end

    private

    def review_params
      params.require(:review).permit(:review, :difficulty_rating, :user_id)
    end
end
