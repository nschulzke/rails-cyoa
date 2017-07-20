class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_reference :games, :first_room, references: :rooms, index: true
    add_foreign_key :games, :rooms, column: :first_room_id
  end
end
