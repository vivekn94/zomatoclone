class AddEmailidToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :emailid, :string
  end
end
