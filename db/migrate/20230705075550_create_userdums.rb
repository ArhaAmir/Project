class CreateUserdums < ActiveRecord::Migration[7.0]
  def change
    create_table :userdums do |t|
      t.string :email
      t.string :password
      t.text :bio
      t.integer :contact
      t.string :name

      t.timestamps
    end
  end
end
