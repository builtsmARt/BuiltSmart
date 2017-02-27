class User < ApplicationRecord
has_many :reviews, dependent: :destroy
has_many :bookmarks, dependent: :destroy
has_many :products, through: :bookmarks, foreign_key: :product_id, dependent: :destroy
validates :full_name, :email, presence: true
validates :email, uniqueness: true
validates :password, length: {minimum: 1}
has_secure_password
end
