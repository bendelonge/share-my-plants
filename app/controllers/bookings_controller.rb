class BookingsController < ApplicationController
  before_action :find_booking, only: [:accept, :deny]

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

  def accept
    puts "IL L A ACCEPTEEEEEEE"
    @booking.status = "approved"
    @booking.save!
    redirect_to bookings_path

  end

  def deny
    @booking.status = "denied"
    @booking.save!
    redirect_to bookings_path
  end


  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

end
