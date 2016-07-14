class AddRestNameToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :rest_name, :string
  end
end
