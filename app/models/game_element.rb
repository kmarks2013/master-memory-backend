class GameElement < ApplicationRecord
  belongs_to :game
  belongs_to :element
end
