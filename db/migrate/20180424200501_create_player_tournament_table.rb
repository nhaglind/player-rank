class CreatePlayerTournamentTable < ActiveRecord::Migration[5.1]
  def change
    create_table :player_tournaments do |t|
      t.integer   "player_id"
      t.integer   "tournament_id"
      t.integer   "round_1"
      t.integer   "round_2"
      t.integer   "round_3"
      t.integer   "round_4"
      t.timestamps
    end
  end
end
