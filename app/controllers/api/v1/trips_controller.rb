class Api::V1::TripsController < ApplicationController

  def index 
    @trips = Trip.all
  end

  def create 
    @user = User.find(id: @user.id)
    @trip = Trip.create(trip_params)
    if !@trip.valid?
      render json: { error: 'failed to create trip'}, status: :not_acceptable
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :state, :description, :start_date, :end_date, :park_id, :trip_lead, :difficulty_rating)
  end
end