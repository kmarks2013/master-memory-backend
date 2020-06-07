class User < ApplicationRecord
    has_many :games, dependent: :destroy
    has_many :scores, through: :games
    has_many :elements, through: :games
    has_many :numbers, through: :games
    has_many :ountries, through: :games
    has_many :presidents, through: :games
    has_secure_password
end
