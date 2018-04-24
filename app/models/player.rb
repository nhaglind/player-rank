class Player < ApplicationRecord
  has_many :team_players
  has_many :tournaments, through: :player_tournaments
  has_many :teams, through: :team_players
end