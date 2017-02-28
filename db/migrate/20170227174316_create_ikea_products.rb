class CreateIkeaProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :ikea_products do |t|
      t.string :product_name, :photo, :article_num, :pdf, :desc, :type
      t.timestamps
    end
  end
end
