class ReservationsController < ApplicationController
	def new
	end
	def create
		#render plain: params[:reservation].inspect
		@reservation = Reservation.new(reservation_params)
		@reservation.save
		redirect_to @reservation
	end
	private 
	def reservation_params
	params.require(:reservation).permit(:pickup_location,:pickup_time,:dropoff_time)
	end
	def show
    	@reservation = Reservation.find(params[:id])
  	end
  def index
    @reservations = Reservation.all
  end
end
