class Card < ApplicationRecord
    belongs_to :user
    has_one :card_history
    has_many :orders
end
