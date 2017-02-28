User.destroy_all
Product.destroy_all
Bookmark.destroy_all
Review.destroy_all

kane = User.create(full_name: "Kane", email: "k@k.com", password: "a")
tony = User.create(full_name:"Tony", email: "t@t.com", password: "a")
bob = User.create(full_name:"Bob", email: "b@b.com", password: "a")
chair = Product.create(title:"Invisible Chair")
tony.bookmarks.create(product_id: 1)
tony.reviews.create(review:"This was a very difficult product to build. I sure wish I had been able to use BuiltSmart when I was putting it together! It broke but I had lost the manual and thought I would have to throw it away. Thanks to BuiltSmart I found the materials I need it to fix up my favorite chair!", difficulty_rating: "5", product_id: 1)

Product.create(
name: "Norberg",
UPC: "608938304360",
ASIN: "B0050S7CK8",
model: "8789",
brand: "Ikea",
title: "Ikea Wall-Mounted Drop-leaf Folding Table",
image_url: "http://ecx.images-amazon.com/images/I/31l5jdtVgPL._SL160_.jpg", description: "Folds flat; saves space when not in use. - Solid wood, a hardwearing natural material. - Seats 2."
)

upc_numbers=['078608002382', '608938304360', '611230124536', '609613408076', '740016860631', '2171339330']
upc_numbers.each do |upc|
  product = Product.new
  product.create_upc_product(upc)
  product.save
end

ikea_article_numbers = ["30180504","20297646", "10308773","S29007850", "S79129608", ]

ikea_article_numbers.each do |article_number|
  ikea_product = IkeaProduct.new
  ikea_product.ikea_scraper(article_number)
  ikea_product.save
end

# Product.create(
# UPC: , EAN: , ASIN: , model: ,brand: "", title: "", barcode_link: "", description: "")
# )
