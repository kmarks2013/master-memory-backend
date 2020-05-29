class GamePresident < ApplicationRecord
  belongs_to :game
  belongs_to :president
end
