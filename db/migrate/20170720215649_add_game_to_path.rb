class AddGameToPath < ActiveRecord::Migration[5.1]
  def change
    add_reference :paths, :game, foreign_key: true
  end
end
