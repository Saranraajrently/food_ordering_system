class Menu < ApplicationRecord
    belongs_to :restaurant
    has_and_belongs_to_many :orders
    has_many :ratings, as: :ratable
end
