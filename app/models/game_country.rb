class GameCountry < ApplicationRecord
  belongs_to :game
  belongs_to :country
end
