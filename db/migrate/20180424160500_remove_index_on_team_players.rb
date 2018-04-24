class RemoveIndexOnTeamPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_index "team_players", ["player_id"]
    remove_index "team_players", ["team_id", "position"]
    remove_index "team_players", ["team_id", "player_id"]
  end
end
