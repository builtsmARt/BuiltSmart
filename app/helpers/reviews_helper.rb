module ReviewsHelper
  def review?(product)
    Review.find_by(user_id: current_user.id, product_id: product)
  end
end
