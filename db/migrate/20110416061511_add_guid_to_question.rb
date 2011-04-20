class AddGuidToQuestion < ActiveRecord::Migration
  def self.up
    add_column :questions, :guid, :string
  end

  def self.down
    remove_column :questions, :guid
  end
end
