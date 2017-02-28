module ProductsHelper
  def find_product
    @product = Product.find_by(id: params[:product_id])
  end

  def upc_api(query)
    root="https://api.upcitemdb.com/prod/trial/lookup?upc=#{query}"
    response = Net::HTTP.get(URI(root))
    parsed_response = JSON.parse(response)["items"][0]
    @item_info={results: parsed_response}
    # @product = Product.new(title: parsed_response["title"])
  end

  def ikea_scraper(article_number)
    html_file = open("http://www.ikea.com/us/en/catalog/products/#{article_number}/")
    nokogiri_document = Nokogiri.parse(html_file)
    body_node = nokogiri_document.children.last
    all_content = body_node.css("div[id='allContent']")
    @product_name =all_content.css("div#name").text
    @photo_path = all_content.css("img#productImg")[0]['src']
    @article_num = all_content.css("div[class='rowContainer']").last.css("div[class='colArticle']").text
    @pdf_path=all_content.css("div[class='rowContainer']").last.css("div")[1].children[1].attributes['href'].value
  end

end
