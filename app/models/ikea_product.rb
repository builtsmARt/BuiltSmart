class IkeaProduct < ApplicationRecord

  def ikea_scraper(article_number)
    html_file = open("http://www.ikea.com/us/en/catalog/products/#{article_number}/")
    nokogiri_document = Nokogiri.parse(html_file)
    body_node = nokogiri_document.children.last
    all_content = body_node.css("div[id='allContent']")
    self.product_name =all_content.css("div#name").text
    self.article_num = all_content.css("div[class='rowContainer']").last.css("div[class='colArticle']").text
    self.description=all_content.css("div#custMaterials").text

    type = all_content.css("div#type").text
    self.type = type.strip!

    self.photo_path = all_content.css("img#productImg")[0]['src']
    self.photo = "http://www.ikea.com#{product.photo_path}"

    pdf_path=all_content.css("div[class='rowContainer']").last.css("div")[1].children[1].attributes['href'].value
    self.pdf="https://docs.google.com/gview?url=http://www.ikea.com#{pdf_path}%>&embedded=true"

    self.product_name = self.product_name.strip!

  end

end
