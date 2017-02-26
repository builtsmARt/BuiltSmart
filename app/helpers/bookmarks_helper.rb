module BoomarksHelper
  def bookmark?(product)
    Bookmark.find_by(user_id: current_user.id, product_id: product)
  end
end
