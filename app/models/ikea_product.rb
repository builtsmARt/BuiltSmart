class IkeaProduct < ApplicationRecord

  def ikea_scraper(article_number)
    html_file = open("http://www.ikea.com/us/en/catalog/products/#{article_number}/")
    nokogiri_document = Nokogiri.parse(html_file)
    body_node = nokogiri_document.children.last
    all_content = body_node.css("div[id='allContent']")
    self.product_name =all_content.css("div#name").text
    self.photo_path = all_content.css("img#productImg")[0]['src']
    self.article_num = all_content.css("div[class='rowContainer']").last.css("div[class='colArticle']").text
    self.pdf_path=all_content.css("div[class='rowContainer']").last.css("div")[1].children[1].attributes['href'].value
    self.product_name = self.product_name.strip!
  end

end
