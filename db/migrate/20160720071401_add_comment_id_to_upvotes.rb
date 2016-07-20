class AddCommentIdToUpvotes < ActiveRecord::Migration
  def change
    add_column :upvotes, :comment_id, :integer
  end
end
