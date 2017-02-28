class CreateIkeaProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :ikea_products do |t|
      t.string :product_name, :photo_path, :article_num, :pdf_path
      t.timestamps
    end
  end
end
