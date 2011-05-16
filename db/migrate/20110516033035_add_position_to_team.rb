class AddPositionToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :position, :integer
  end

  def self.down
    remove_column :teams, :position
  end
end
