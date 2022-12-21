class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      # t.integer :id PRIMARY KEY
      t.integer :ratable_section
      t.string :ratable_name
      t.references :ratable, polymorphic: true

      t.timestamps
    end
  end
end
