class Showtime < ApplicationRecord

    belongs_to :movie
    has_many :orders
end
