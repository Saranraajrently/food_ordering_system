class CreateCardHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :card_histories do |t|
      # t.integer :id PRIMARY KEY
      t.integer :user_id
      t.integer :order_id
      t.date :payment_date
      t.string :payment_status

      t.timestamps
    end
  end
end
