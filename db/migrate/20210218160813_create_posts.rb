class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :post
      t.string :user_id

      t.timestamps
    end
    add_index :posts, :user_id
  end
end
