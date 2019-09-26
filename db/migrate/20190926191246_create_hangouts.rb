class CreateHangouts < ActiveRecord::Migration[6.0]
  def change
    create_table :hangouts do |t|
      t.integer :friendship_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
