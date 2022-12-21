class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      # t.integer :id PRIMARY KEY
      t.integer :menu_price
      t.string :menu_name
      t.string :menu_type

      t.timestamps
    end
  end
end
