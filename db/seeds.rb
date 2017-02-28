User.destroy_all
Product.destroy_all
Bookmark.destroy_all
Review.destroy_all

kane = User.create(full_name: "Kane", email: "k@k.com", password: "a")
tony = User.create(full_name:"Tony", email: "t@t.com", password: "a")
bob = User.create(full_name:"Bob", email: "b@b.com", password: "a")
Product.create(
name: "Norberg",
UPC: "608938304360",
ASIN: "B0050S7CK8",
model: "8789",
brand: "Ikea",
title: "Ikea Wall-Mounted Drop-leaf Folding Table",
image_url: "http://www.ikea.com/us/en/images/products/norberg-wall-mounted-drop-leaf-table-white__0120123_PE276553_S4.JPG", description: "Table top/ Top rail: Particleboard, ABS plastic, Laminate (melamine foil)
Underframe/ Mounting plate: Steel, Epoxy/polyester powder coating
Plastic parts: Reinforced polyamide, Polyethylene, Polypropylene
Spring: Stainless steel
Pin: Steel"
)
tony.bookmarks.create(product_id: 1)
tony.reviews.create(review:"This was a very difficult product to build. I sure wish I had been able to use BuiltSmart when I was putting it together! It broke but I had lost the manual and thought I would have to throw it away. Thanks to BuiltSmart I found the materials I need it to fix up my favorite chair!", difficulty_rating: "5", product_id: 1)

ikea_article_numbers = ["20297646", "10308773","S29007850", "S79129608", "S09149737", "50353160", "20279888", "40216531", "90144730", "60239715", "10228620", "70239710", "S29103597", "40297966", "10297958", "10332075", "S59139689", "30069762", "50290281", "S29898342", "50288042", "10259046"]

ikea_article_numbers.each do |article_number|
  ikea_product = Product.new
  ikea_product.ikea_scraper(article_number)
  ikea_product.save
end
