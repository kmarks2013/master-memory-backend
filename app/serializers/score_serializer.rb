class ScoreSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :game
end
