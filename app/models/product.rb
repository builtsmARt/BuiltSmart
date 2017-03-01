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

  def ikea_scraper(article_number)
    html_file = open("http://www.ikea.com/us/en/catalog/products/#{article_number}/")
    nokogiri_document = Nokogiri.parse(html_file)
    body_node = nokogiri_document.children.last
    all_content = body_node.css("div[id='allContent']")
    product_name =all_content.css("div#name").text
    self.name = product_name.strip!
    #article number
    self.model = all_content.css("div[class='rowContainer']").last.css("div[class='colArticle']").text
    self.description=all_content.css("div#custMaterials").text
    #short description
    type = all_content.css("div#type").text
    self.title= type.strip!

    photo_path = all_content.css("img#productImg")[0]['src']
    self.image_url = "http://www.ikea.com#{photo_path}"

    pdf_path=all_content.css("div[class='rowContainer']").last.css("div")[1].children[1].attributes['href'].value
    self.pdf_url="https://docs.google.com/gview?url=http://www.ikea.com#{pdf_path}&embedded=true"

  end
end
