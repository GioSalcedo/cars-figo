class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def new
    @booking = Booking.new
    @vehicle = Vehicle.find(params[:vehicle_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @vehicle = Vehicle.find(params[:vehicle_id])
    @booking.vehicle = @vehicle
    @booking.user = current_user
    if @booking.save
      redirect_to vehicle_path(@vehicle)
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
    params.require(:booking).permit(:s_date, :f_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
