class Review < ApplicationRecord
  validates :user_id, :product_id, presence: true
  validates :user_id, uniqueness: {scope: :manual_id}
  belongs_to :reviewer, foreign_key: :user_id, class_name: :User
  belongs_to :product
end
