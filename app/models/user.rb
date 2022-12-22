class User < ApplicationRecord

    has_many:orders
    has_many:cards

    # validates :username, presence: true
    # validates :user_password, presence: true, length: {minimum: 8 }
end
