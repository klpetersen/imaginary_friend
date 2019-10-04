class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.integer :user_id
      t.integer :buddy_id
      t.integer :hangout_id
      t.integer :friendship_rank
      t.string :adventures
      t.timestamps
    end
  end
end
