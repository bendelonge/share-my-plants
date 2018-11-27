class BookingsController < ApplicationController
  def index
    @requested_bookings = current_user.bookings
    @received_bookings = current_user.received_bookings


  end

end
