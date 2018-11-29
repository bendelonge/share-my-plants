class RequestsController < ApplicationController
  def index
    @requested_bookings = current_user.bookings
  end
end
