class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :fen
      t.string :pgn
      t.integer :whiteplayer_id
      t.integer :blackplayer_id

      t.timestamps
    end
  end
end
