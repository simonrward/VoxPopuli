class AddCountToOption < ActiveRecord::Migration
  def self.up
    add_column :options, :count, :int
  end

  def self.down
    remove_column :options, :count
  end
end
