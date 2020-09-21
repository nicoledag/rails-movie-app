class Order < ApplicationRecord

    belongs_to :showtime
    belongs_to :user
    
    validates :credit_card_number, :expiration_date, presence: true
    validates :credit_card_number, uniqueness: true

    # validates :total_seats_selected, length: { in: 1..6 }
    # validates :credit_card_number, length: { in: 13..15 }

    # validate :expiration_date_checker

    # def expiration_date_checker
    #     if expiration_date < DateTime.now
    #         errors.add(:expiration_date, "password is expired")
    #     end
    # end


end
