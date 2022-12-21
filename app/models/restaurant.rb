class Restaurant < ApplicationRecord
    has_many :orders
    has_many :menus 
    has_many :ratings , as: :ratable
end
