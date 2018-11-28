class BookingsController < ApplicationController
  def index
    @requested_bookings = current_user.bookings
    @received_bookings = current_user.received_bookings
  end


  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new (booking_params)
    @booking.plant_id = params[:plant_id]
    @booking.user_id = current_user.id
    @booking.total_price = calculate_total_price
    @booking.save
    redirect_to bookings_path
  end

  def calculate_total_price
    booking_duration = 1 + (@booking.ending_date - @booking.starting_date).to_i
    plant_price = @booking.plant.price_per_day
    return booking_duration * plant_price
  end


  private
  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end


end
