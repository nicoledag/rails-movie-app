class Showtime < ApplicationRecord

    belongs_to :movie
    has_many :orders

    validates :seats_available, :seat_cost, :start_time, presence: true

    def format_date
        self.date.strftime("%a, %m/%d/%Y")
    end

    def format_time
        self.start_time.strftime("%l:%M %p")
    end
end
