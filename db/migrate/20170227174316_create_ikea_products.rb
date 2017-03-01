class CreateIkeaProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :ikea_products do |t|
      
      t.timestamps
    end
  end
end
