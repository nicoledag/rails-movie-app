class OrdersController < ApplicationController

    def new
        # binding.pry
        @order = Order.new
    end

    def create
        binding.pry
    end
end
