class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.integer :user_id
      t.integer :buddy_id
      t.integer :hangout_id
      t.integer :success_points
      t.integer :fail_points

      t.timestamps
    end
  end
end
