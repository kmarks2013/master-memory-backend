class GameSerializer < ActiveModel::Serializer
  attributes :id, :type, :user_id
  belongs_to :user
  has_one :score
end
