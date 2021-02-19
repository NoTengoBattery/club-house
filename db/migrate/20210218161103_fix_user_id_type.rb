class FixUserIdType < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :user_id
    add_column :posts, :user_id, :integer
  end
end
