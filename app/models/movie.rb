class Movie < ApplicationRecord

    has_many :genres
    has_many :showtimes


    
end
