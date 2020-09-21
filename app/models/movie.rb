class Movie < ApplicationRecord

    has_many :genres
    has_many :showtimes

    validates :title, :length, :image, presence: true
    
end
