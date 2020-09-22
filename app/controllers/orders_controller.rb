class OrdersController < ApplicationController

    before_action :set_order, only: [:show]

    def index
        @orders = current_user.orders
    end

    def new
        if (params[:showtime_id]) && @showtime = Showtime.find_by_id(params[:showtime_id])
            @order = @showtime.orders.build #adds showtime id to project.
          else
            @order = Order.new
          end
        end
        
      def create
        # binding.pry
            @user = current_user
            @showtime = Showtime.find_by_id(params[:order][:showtime_id]) 
            @order = @user.orders.build(orders_params) 
            
            if @showtime.seats_available <= 0 || @showtime.seats_available < @order.total_seats_selected
              render :new 

            elsif @order.save
    
              @cost = @showtime.seat_cost
              @total_seats = @order.total_seats_selected
              @total_cost = @cost * @total_seats
              @order.update(total_cost: @total_cost)

              @total_seats_selected = @order.total_seats_selected
              @seats_available = @showtime.seats_available
              @new_seats_available =  @seats_available - @total_seats_selected
              @showtime.update(seats_available: @new_seats_available  )
          
              redirect_to order_path(@order)
            else
              render :new #lets us call field w/errors.  Keeps inputted data.  #renders users/new form.
              end
        end



    def show

    end

    private

    def orders_params
        params.require(:order).permit(:total_seats_selected, :credit_card_number, :expiration_date, :showtime_id)
    end


    def set_order
        @order = Order.find_by(id: params[:id])
        if !@order
          redirect_to root_path
        end
      end

end
