class CreateBuddies < ActiveRecord::Migration[6.0]
  def change
    create_table :buddies do |t|
      t.string :name
      t.string :img_url

      t.timestamps
    end
  end
end
