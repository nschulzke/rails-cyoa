class CreatePaths < ActiveRecord::Migration[5.1]
  def change
    create_table :paths do |t|
      t.string :choice
      t.integer :from_room_id, foreign_key: true
      t.integer :to_room_id, foreign_key: true

      t.timestamps
    end
  end
end
