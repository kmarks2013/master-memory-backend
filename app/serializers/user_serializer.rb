class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :age, :email
  has_many :games
end