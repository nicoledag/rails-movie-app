class Movie < ApplicationRecord

    has_many :genres
    has_many :showtimes
    has_many :orders, through: :showtimes

    validates :title, :length, :image, presence: true
    
end
