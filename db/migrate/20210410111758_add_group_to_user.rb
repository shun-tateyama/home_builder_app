class AddGroupToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :group, :integer, default: 1, null: false
  end
end
