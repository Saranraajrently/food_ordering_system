class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # t.integer :id 
      t.string :username
      t.string :user_password
      t.string :user_address
      t.string :user_phonenumber

      t.timestamps
    end
  end
end
