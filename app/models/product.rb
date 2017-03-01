class Product < ApplicationRecord
  has_many :reviews
  has_many :users, through: :bookmarks
  has_many :reviewers, through: :reviews, foreign_key: :user_id

  def upc_api(query)
    root="https://api.upcitemdb.com/prod/trial/lookup?upc=#{query}"
    response = Net::HTTP.get(URI(root))
    @parsed_response = JSON.parse(response)["items"][0]
    # @item_info={results: @parsed_response}
    # @product = Product.new(title: parsed_response["title"])
  end

  def create_upc_product(upc)
    self.upc_api(upc)
    self.brand = @parsed_response['brand']
    self.title = @parsed_response['title']
    self.EAN = @parsed_response['ean']
    self.ASIN = @parsed_response['brand']
    self.model = @parsed_response['model']
    self.description = @parsed_response['description']
    self.save
  end
end
