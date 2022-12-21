class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      # t.integer :id PRIMARY KEY
      t.integer :user_id 
      # FOREIGN KEY
      t.date :order_date
      t.integer :no_of_menu
      t.integer :total_price
      t.string :order_status

      t.timestamps
    end
  end
end
