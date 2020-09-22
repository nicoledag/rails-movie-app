class Order < ApplicationRecord

    belongs_to :showtime
    belongs_to :user
    
    validates :total_seats_selected, :credit_card_number, :expiration_date, presence: true
    validates :credit_card_number, length: { in: 13..16 }
    validates :total_seats_selected, :numericality => { greater_than_or_equal_to: 0, less_than: 6 }

    validate :expiration_date_checker

    def expiration_date_checker
        if expiration_date && expiration_date < DateTime.now
            errors.add :expiration_date, 'expiration date has expired'
        end
    end

    def self.order_newest
        self.order(created_at: :desc)
    end


end
