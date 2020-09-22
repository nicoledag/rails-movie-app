class Showtime < ApplicationRecord

    belongs_to :movie
    has_many :orders

    validates :seats_available, :seat_cost, :start_time, presence: true
    validates :seats_available, numericality: { greater_than: 0 }

    # vailidate :seats_available_for_purchase

    # def seats_available_for_purchase
    #     if seats_available 
    #         s = seats_available
    #         if s < 0
    #             errors.add :seats_available, 'Show is Sold Out!'
    #         end
    #     end
    # end

    def format_date
        self.date.strftime("%a, %m/%d/%Y")
    end

    def format_time
        self.start_time.strftime("%l:%M %p")
    end

   


    
end
