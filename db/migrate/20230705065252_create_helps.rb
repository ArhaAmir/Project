class CreateHelps < ActiveRecord::Migration[7.0]
  def change
    create_table :helps do |t|
        t.text :requestContent
        t.boolean :status
        t.integer :userdum_id
      t.timestamps
    end
  end
end
