class ElementSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :symbol, :atomic_weight, :atomic_number
end
