class CreateBuddies < ActiveRecord::Migration[6.0]
  def change
    create_table :buddies do |t|
      t.string :name
      t.integer :img_num
      t.string :w_prefs
      t.string :s_prefs
      t.string :f_prefs
      t.timestamps
    end
  end
end
