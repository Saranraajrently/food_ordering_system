class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      # t.integer :id PRIMARY KEY
      t.string :adminname
      t.string :admin_password

      t.timestamps
    end
  end
end
