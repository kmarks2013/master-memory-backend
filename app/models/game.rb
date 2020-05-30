class Game < ApplicationRecord
  belongs_to :user
  has_one :score, dependent: :destroy
  has_many :game_presidents, dependent: :destroy
  has_many :game_elements, dependent: :destroy
  has_many :game_numbers, dependent: :destroy
  has_many :game_countries, dependent: :destroy
  has_many :presidents, through: :game_presidents
  has_many :elements, through: :game_elements
  has_many :numbers, through: :game_numbers
  has_many :countries, through: :game_countries
end
