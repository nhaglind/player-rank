class AddToParToPlayerTournament < ActiveRecord::Migration[5.1]
  def change
    add_column :player_tournaments, :to_par, :integer
  end
end
