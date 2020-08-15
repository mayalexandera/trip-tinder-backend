class Api::V1::TripsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @trips = Trip.all
    render json: @trips
  end

  def create
    @user = User.find_by(username: params[:trip_lead][:username])
    @trip = Trip.new(trip_params)
    @trip.trip_lead = @user
    @trip.save!
    if @trip.save
     render json: @trip
    else
      render json: { error: 'failed to create trip'}, status: :not_acceptable
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :state, :description, :start_date, :end_date, :park_id, :trip_lead, :difficulty_rating)
  end
end