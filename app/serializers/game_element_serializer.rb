class GameElementSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :element_id
  belongs_to :game
  belongs_to :element
end
