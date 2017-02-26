class Bookmark < ApplicationRecord
  validates :user_id, :product_id, presence: true
  validates :user_id, uniqueness: {scope: :product_id}
  validates :product_id, uniqueness: {scope: :user_id}
  belongs_to :user
  belongs_to :product
end
