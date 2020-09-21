class Order < ApplicationRecord

    belongs_to :showtime
    belongs_to :user

    validates :credit_card_number, :expiration_date, :total_seats_selected, :total_cost, presence: true
    validates :credit_card_number, uniqueness: true

end
