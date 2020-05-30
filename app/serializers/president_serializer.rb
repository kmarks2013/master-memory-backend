class PresidentSerializer < ActiveModel::Serializer
  attributes :id, :name, :terms, :party, :president_order, :image_url
end
