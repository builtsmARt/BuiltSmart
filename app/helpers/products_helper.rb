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

end
