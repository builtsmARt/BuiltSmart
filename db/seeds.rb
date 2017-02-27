User.destroy_all
Product.destroy_all
Bookmark.destroy_all
Review.destroy_all

kane = User.create(full_name: "Kane", email: "k@k.com", password: "a")
tony = User.create(full_name:"Tony", email: "t@t.com", password: "a")
bob = User.create(full_name:"Bob", email: "b@b.com", password: "a")
chair = Product.create(brand: "Ikea", title: "LILLANGEN", barcode_link: "n/a", model: "202.051.71", description: "The mirror comes with safety film on the back, which reduces the risk of injury if the glass is broken.", has_ar: true)

tony.bookmarks.create(product_id: chair.id)
tony.reviews.create(review:"This was a very difficult product to build. I sure wish I had been able to use BuiltSmart when I was putting it together! It broke but I had lost the manual and thought I would have to throw it away. Thanks to BuiltSmart I found the materials I need it to fix up my favorite chair!", difficulty_rating: "5", product_id: chair.id)

