class BookingsController < ApplicationController
  def index
    @requested_bookings = current_user.bookings
    @received_bookings = current_user.received_bookings
  end


  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.plant_id = params[:plant_id]
    @booking.user_id = current_user.id
    @booking.starting_date = DateTime.now
    @booking.ending_date = '2018-12-31'
    @booking.total_price = 100
    @booking.save
    redirect_to bookings_path
  end
end
