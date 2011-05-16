it@github.com:42aerolitos/cbdb.git1;2790;0cclass AddLogoToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :logo, :string
  end

  def self.down
    remove_column :teams, :logo
  end
end
