class ShowtimesController < ApplicationController
    before_action :set_movie, only: [:show]

    def new
      @order = Order.new
    end

    def show 
      @order = Order.new
    end

    def set_movie
        @showtime = Showtime.find_by(id: params[:id])
        if !@showtime
          redirect_to root_path
        end
      end
end
