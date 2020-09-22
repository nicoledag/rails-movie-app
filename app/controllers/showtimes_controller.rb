class ShowtimesController < ApplicationController
    before_action :set_movie, only: [:show]

    def new
      # binding.pry
      if (params[:showtime_id]) && @showtime = Showtime.find_by_id(params[:showtime_id])
        @order = @showtime.orders.build 
      else
        @order = Order.new
      end
    end

    def show 
      # binding.pry
      if (params[:id]) && @showtime = Showtime.find_by_id(params[:id])
        @order = @showtime.orders.build #adds showtime id to order.
      else
        @order = Order.new
      end
    end

    def set_movie
        @showtime = Showtime.find_by(id: params[:id])
        if !@showtime
          redirect_to root_path
        end
      end
end
