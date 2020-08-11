class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.integer :user_id
      t.integer :friended_user_id

      t.timestamps
    end
  end
end
