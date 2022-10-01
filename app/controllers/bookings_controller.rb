class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @booking = Booking.all
  end

  def show; end

  def new
  end

  def create
    @booking = Booking.new(booking_params)
    if booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking
    else
      render :edit
    end
  end

  def edit; end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:vehicle_id, :user_id, :start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
