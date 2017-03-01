User.destroy_all
Product.destroy_all
Bookmark.destroy_all
Review.destroy_all

kendy = User.create(full_name: "Kendy Ng", email: "kendy@gmail.com", password: "password", uid: "DDIWXPk2kMSvy7oXL9EbfLGadaz2")

tony = User.create(full_name:"Tony Lam", email: "tony@gmail.com", password: "password", uid: "VDHChLEEuvaI76uGvRNiwj6kNML2")

kane = User.create(full_name:"Kane Lee", email: "kane.lee@gmail.com", password: "password", uid: "VDHChLEEuvaI76uGvRNiwj6kNML2")

chair = Product.create(title:"Invisible Chair")
tony.bookmarks.create(product_id: 1)
tony.reviews.create(review:"This was a very difficult product to build. I sure wish I had been able to use BuiltSmart when I was putting it together! It broke but I had lost the manual and thought I would have to throw it away. Thanks to BuiltSmart I found the materials I need it to fix up my favorite chair!", difficulty_rating: "5", product_id: 1)


# upc_numbers=[000772087896, etc]

Product.create(
name: "Norberg",
UPC: "608938304360",
ASIN: "B0050S7CK8",
model: "8789",
brand: "Ikea",
title: "Ikea Wall-Mounted Drop-leaf Folding Table",
image_url: "http://s7d4.scene7.com/is/image/BonTon/823607?$ibm_large$", description: "Folds flat; saves space when not in use. - Solid wood, a hardwearing natural material. - Seats 2."
)



# Product.create(
# UPC: , EAN: , ASIN: , model: ,brand: "", title: "", barcode_link: "", description: "")
# )
