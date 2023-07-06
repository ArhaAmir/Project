class RemoveStoryLikesFromStories < ActiveRecord::Migration[7.0]
  def change
    remove_column :stories, :storyLikes, :integer
  end
end
