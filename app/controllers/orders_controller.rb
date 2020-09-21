class OrdersController < ApplicationController

    def index
        @order = Order.all
    end

    def new
        # binding.pry
        @order = Order.new
    end

    def create
        # binding.pry
        # @user = User.new(user_params)
        # if @user.save
        # session[:user_id] = @user.id
        # redirect_to root_path   
        # else
        # render :new  #lets us call field w/errors.  Keeps inputted data.  #renders users/new form.
        # end

    end

    private

    def orders_params
        params.require(:order).permit(:total_seats_selected, :total_cost, :credit_card_number, :expiration_date, :showtime_id, :user_id)
    end

end
