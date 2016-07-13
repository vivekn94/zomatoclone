class AddIndexToUsers < ActiveRecord::Migration
  def change
          add_index :reviews, [:user_id, :created_at]
  end
end
