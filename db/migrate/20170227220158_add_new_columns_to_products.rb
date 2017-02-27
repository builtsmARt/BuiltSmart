class AddNewColumnsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :image_url, :string
    add_column :products, :pdf_url, :string
    add_column :products, :name, :string
    change_column :products, :EAN, :string
    change_column :products, :UPC, :string
    change_column :products, :ASIN, :string
    change_column :products, :model, :string
  end
end
