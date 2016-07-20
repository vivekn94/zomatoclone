class RemoveColumns < ActiveRecord::Migration
  def self.up
  remove_column :upvotes, :comment_id
end
end
