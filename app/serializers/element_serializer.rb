class ElementSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :symbol, :atomic_weight, :atomic_number, :bonding_type, :group_block, :standard_state, :boiling_point, :melting_point, :year_discovered
end
