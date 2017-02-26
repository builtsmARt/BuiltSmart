class User < ApplicationRecord
has_many :reviews
has_many :bookmarks
has_many :products, through: :bookmarks, foreign_key: :product_id
validates :full_name, :email, presence: true
validates :email, uniqueness: true
validates :password, length: {minimum: 1}
has_secure_password
end
