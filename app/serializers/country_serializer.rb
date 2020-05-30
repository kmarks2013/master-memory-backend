class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :flag_url, :region, :sub_region, :language, :capital, :population
end
