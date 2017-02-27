kane = User.create(full_name: "Kane", email: "k@k.com", password: "a")
tony = User.create(full_name:"Tony", email: "t@t.com", password: "a")
bob = User.create(full_name:"Bob", email: "b@b.com", password: "a")
chair = Product.create(title:"chair")
tony.bookmarks.create(product_id: 1)
tony.reviews.create(review:"This was a very difficult product to build. I sure wish I had been able to use BuiltSmart when I was putting it together! It broke but I had lost the manual and thought I would have to throw it away. Thanks to BuiltSmart I found the materials I need it to fix up my favorite chair!", difficulty_rating: "5", product_id: 1)


# upc_numbers=[000772087896, etc]

Product.create(
UPC: 608938304360, EAN: , ASIN: "B0050S7CK8" , model: 608938304360, brand: "Ikea", title: "Ikea Wall-Mounted Drop-leaf Folding Table", barcode_link: "", description: "Folds flat; saves space when not in use. - Solid wood, a hardwearing natural material. - Seats 2.")
)


# Product.create(
# UPC: , EAN: , ASIN: , model: ,brand: "", title: "", barcode_link: "", description: "")
# )
