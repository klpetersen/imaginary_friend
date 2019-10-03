class Activities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :act_type
      t.integer :pref_value

      t.timestamps
    end
  end
end
