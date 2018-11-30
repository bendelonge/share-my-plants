class RequestsController < ApplicationController
  def index
    @requested_bookings             = current_user.bookings

    @requested_pending_bookings     = current_user.bookings
                                                  .where(status: "pending")
                                                  .order(starting_date: :desc)

    @requested_non_pending_bookings = current_user.bookings
                                                  .where.not(status: "pending")
                                                  .order(starting_date: :desc)
  end
end
