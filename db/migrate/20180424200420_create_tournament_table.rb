class CreateTournamentTable < ActiveRecord::Migration[5.1]
  def change
    create_table :tournaments do |t|
      t.string  "tournament_name"
      t.integer "tournament_year"
      t.timestamps
    end
  end
end
