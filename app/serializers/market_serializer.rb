class MarketSerializer < ActiveModel::Serializer
  attributes :id, :name, :info, :fruits
  has_many :reviews
end
