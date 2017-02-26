class Product < ApplicationRecord
  has_many :reviews
  has_many :users, through: :bookmarks
  has_many :reviews
  has_many :reviewers, through: :reviews, foreign_key: :user_id

  #connect barcode link with EAN?
end
