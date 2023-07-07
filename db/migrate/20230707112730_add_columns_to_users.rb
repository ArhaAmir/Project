class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :text
    add_column :users, :role, :string, default:0
    add_column :users, :phone, :string
  end
end
