class Order < ApplicationRecord

    belongs_to :showtime
    belongs_to :user
    
    validates :total_seats_selected, :credit_card_number, :expiration_date, presence: true
    validates :total_seats_selected, length: { in: 1..6 }
    validates :credit_card_number, length: { in: 13..16 }

    validate :expiration_date_checker

    def expiration_date_checker
        if expiration_date && expiration_date < DateTime.now
            errors.add :expiration_date, 'expiration date has expired'
        end
    end


end
