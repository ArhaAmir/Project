class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.text :bio
      t.integer :contact

      t.timestamps
    end
  end
end
