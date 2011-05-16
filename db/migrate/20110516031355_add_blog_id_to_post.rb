class AddBlogIdToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :blog_id, :integer
  end

  def self.down
    remove_column :posts, :blog_id
  end
end
