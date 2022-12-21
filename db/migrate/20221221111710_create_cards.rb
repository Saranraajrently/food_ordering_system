class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      # t.integer :id PRIMARY KEY
      t.string :card_name
      t.integer :card_number

      t.timestamps
    end
  end
end
