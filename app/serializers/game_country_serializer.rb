class GameCountrySerializer < ActiveModel::Serializer
  attributes :id, :game_id, :country_id
  belongs_to :game
  belongs_to :country
end
