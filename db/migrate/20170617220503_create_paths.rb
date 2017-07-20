class CreatePaths < ActiveRecord::Migration[5.1]
  def change
    create_table :paths do |t|
      t.string :choice

      t.timestamps
    end
    add_reference :paths, :from_room, references: :rooms, index: true
    add_foreign_key :paths, :rooms, column: :from_room_id

    add_reference :paths, :to_room, references: :rooms, index: true
    add_foreign_key :paths, :rooms, column: :to_room_id
  end
end
