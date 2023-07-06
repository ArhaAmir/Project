class CreateStories < ActiveRecord::Migration[7.0]
  def change
    create_table :stories do |t|
      t.integer :story_id
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
