class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      # t.integer :id PRIMARY KEY
      t.string :restaurant_name

      t.timestamps
    end
  end
end
