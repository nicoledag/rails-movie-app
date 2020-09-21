class Showtime < ApplicationRecord

    belongs_to :movie
    has_many :orders

    validates :title, :length, :image, presence: true

    def format_date
        self.date.strftime("%m/%d/%Y")
    end

    def format_time
        self.start_time.strftime("%l:%M %p")
    end
end
