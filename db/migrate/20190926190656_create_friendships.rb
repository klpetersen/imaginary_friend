class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.integer :quiz_id
      t.integer :buddy_id
      t.integer :hangout_id

      t.timestamps
    end
  end
end
