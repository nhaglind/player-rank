class AddTeamPlayersTable < ActiveRecord::Migration[5.1]
  def change
    create_table "team_players", force: :cascade do |t|
      t.integer  "team_id"
      t.integer  "player_id"
      t.integer   "position"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
    add_index "team_players", ["player_id"], name: "index_team_players_on_player_id", using: :btree
    add_index "team_players", ["team_id", "position"], name: "index_team_players_on_team_id", unique: true, using: :btree
    add_index "team_players", ["team_id", "player_id"], name: "index_team_players_on_team_id_and_player_id", unique: true, using: :btree
  end
end
