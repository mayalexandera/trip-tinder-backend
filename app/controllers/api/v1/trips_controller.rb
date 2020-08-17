class Api::V1::TripsController < ApplicationController
  skip_before_action :authorized

  def index
    puts params[:searchTerm]
    @trips = Trip.all
    render json: @trips
  end

  def create
    @user = User.find(id: @user.id)
    @trip = Trip.create(trip_params)
    if @trip.save
      UserTrip.create!(
        trips_id: @trip.id,
        trip_lead: @trip.trip_lead
      )

      ParkTrip.create!(
        trip_id: @trip.id,
        park_id: @trip.park_id
      )
    end

    if !@trip.valid?
      render json: { error: 'failed to create trip'}, status: :not_acceptable
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :state, :description, :start_date, :end_date, :park_id, :trip_lead, :difficulty_rating)
  end
end