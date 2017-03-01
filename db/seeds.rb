User.destroy_all
Product.destroy_all
Bookmark.destroy_all
Review.destroy_all
kendy = User.create(full_name:"Kendy", email: "k@ng.com", password: "a")
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
model: "301.805.04",
brand: "Ikea",
title: "Ikea Wall-Mounted Drop-leaf Folding Table",
pdf_url: "http://www.ikea.com/us/en/assembly_instructions/norberg-wall-mounted-drop-leaf-table__AA-500128-6_pub.pdf",
image_url: "http://www.ikea.com/us/en/images/products/norberg-wall-mounted-drop-leaf-table-white__0120123_PE276553_S4.JPG", description: "Table top/ Top rail: Particleboard, ABS plastic, Laminate (melamine foil)
Underframe/ Mounting plate: Steel, Epoxy/polyester powder coating
Plastic parts: Reinforced polyamide, Polyethylene, Polypropylene
Spring: Stainless steel
Pin: Steel"
)

ikea_article_numbers = ["20297646", "10308773","S29007850", "S79129608", "S09149737", "50353160", "20279888", "40216531", "90144730", "60239715", "10228620", "70239710", "S29103597", "40297966", "10297958", "10332075", "S59139689", "30069762", "50290281", "S29898342", "50288042", "10259046", "90258156", "80237225", "30257598", "S59874504", "30333804", "80321380", "30103676", "50244741", "10119206", "60312292", "80248525", "00099789"]

ikea_article_numbers.each do |article_number|
  ikea_product = IkeaProduct.new
  ikea_product.ikea_scraper(article_number)
  ikea_product.save
end

tony.bookmarks.create(product_id: 2)
