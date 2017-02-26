module ProductsHelper
  def find_product
    @product = Product.find_by(id: params[:product_id])
  end
end
