class Option < ActiveRecord::Migration
  def self.up
         change_column :options, :count, :int, :default => 0, :null => false
  end

  def self.down
  end
end