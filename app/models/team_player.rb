class TeamPlayer < ApplicationRecord
  belongs_to :team
  belongs_to :player
  default_scope { order(position: :asc) }
  validates :player_id, uniqueness: { scope: :team_id }
end
