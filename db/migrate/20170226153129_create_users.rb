class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :full_name, :password_digest, null:false
      t.string :email, uniqueness: true
      t.timestamps
    end
  end
end
