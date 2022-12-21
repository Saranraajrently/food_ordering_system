class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      # t.integer :id PRIMARY KEY
      t.integer :user_selected_id 
      t.integer :order_selected_id
      t.integer :menu_selected_id

      t.belongs_to :menu
      t.belongs_to :order
      
      t.timestamps
    end
  end
end
