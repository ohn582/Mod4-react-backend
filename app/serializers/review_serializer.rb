class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :content
  has_one :market
end
