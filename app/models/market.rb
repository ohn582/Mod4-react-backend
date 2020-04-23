class Market < ApplicationRecord
    has_many :reviews, dependent: :destroy 
end
