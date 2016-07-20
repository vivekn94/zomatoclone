class CreateCommentvotes < ActiveRecord::Migration
  def change
    create_table :commentvotes do |t|
      t.integer :comment_id

      t.timestamps
    end
  end
end
