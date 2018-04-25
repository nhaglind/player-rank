class Tournament < ApplicationRecord
  has_many :players
  has_many :player_tournaments
end
