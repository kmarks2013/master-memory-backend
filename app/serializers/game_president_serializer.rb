class GamePresidentSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :president_id
  belongs_to :game
  belongs_to :president
end
