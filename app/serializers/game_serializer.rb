class GameSerializer < ActiveModel::Serializer
  attributes :id, :type, :user_id
  belongs_to :user
  has_one :score
  has_many :game_elements
  has_many :game_countries
  has_many :game_numbers
  has_many :game_presidents
end
