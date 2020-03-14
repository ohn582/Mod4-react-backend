class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :market_id
  belongs_to :market
end
