class Review < ApplicationRecord
  belongs_to :market
  validates :name, :content, :market_id, presence: true
end
