class AddGameToRoom < ActiveRecord::Migration[5.1]
  def change
    add_reference :rooms, :game, foreign_key: true
  end
end
