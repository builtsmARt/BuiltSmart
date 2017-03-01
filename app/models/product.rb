class Product < ApplicationRecord
  has_many :reviews
  has_many :users, through: :bookmarks
  has_many :reviewers, through: :reviews, foreign_key: :user_id

  validates :name, presence: true

  def ikea_scraper(article_number)
    html_file = open("http://www.ikea.com/us/en/catalog/products/#{article_number}/")
    nokogiri_document = Nokogiri.parse(html_file)
    body_node = nokogiri_document.children.last
    all_content = body_node.css("div[id='allContent']")

    product_name =all_content.css("div#name").text
    self.name = product_name.strip!

    self.model = all_content.css("div[class='rowContainer']").last.css("div[class='colArticle']").text

    self.description=all_content.css("div#custMaterials").text

    type = all_content.css("div#type").text
    self.title= type.strip!

    photo_path = all_content.css("img#productImg")[0]['src']
    self.image_url = "http://www.ikea.com#{photo_path}"

    pdf_path=all_content.css("div[class='rowContainer']").last.css("div")[1].children[1].attributes['href'].value
    self.pdf_url="https://docs.google.com/gview?url=http://www.ikea.com#{pdf_path}&embedded=true"
  end

end
