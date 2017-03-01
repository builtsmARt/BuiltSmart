class AddNewColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firebase_uid, :string
  end
end
