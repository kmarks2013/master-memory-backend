class GameNumberSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :number_id
  belongs_to :game
  belongs_to :number
end
