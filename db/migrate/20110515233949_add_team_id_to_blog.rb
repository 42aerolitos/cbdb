class AddTeamIdToBlog < ActiveRecord::Migration
  def self.up
    add_column :blogs, :team_id, :integer
  end

  def self.down
    remove_column :blogs, :team_id
  end
end
