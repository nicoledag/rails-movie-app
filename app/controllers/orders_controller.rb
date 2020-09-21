class OrdersController < ApplicationController

    def new
        # binding.pry
        @order = Order.new
    end

    def create
        # binding.pry
    end

    private

    def orders_params
        params.require(:order).permit(:total_seats_selected, :total_cost, :credit_card_number, :expiration_date, :showtime_id, :user_id)
    end

end
