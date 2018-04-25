class Team < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  has_many :team_players
  has_many :players, through: :team_players
  accepts_nested_attributes_for :team_players
end