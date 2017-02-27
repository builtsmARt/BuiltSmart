class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :brand, :title, :barcode_link, :ASIN, :image_url, :pdf_url
      t.integer :EAN, :UPC, :model
      t.text :description
      t.boolean :has_ar, default: false
      t.timestamps
    end
  end
end
