class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :age, :email, :name
end
