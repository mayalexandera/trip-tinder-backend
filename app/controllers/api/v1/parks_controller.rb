
class Api::V1::ParksController < ApplicationController
  skip_before_action :authorized

  def index 
    @parks = Park.all 
  end

  def show
    @park = Park.find_or_create_by(id: params[:park][:id])
  end

  def create
    @park = Park.create(park_params)
    if @park.save 
      render json: @park
    else
      render json: { error: 'failed to create trip'}, status: :not_acceptable
    end

  end

  private 
  def park_params
    params.require(:park).permit(:name, :state, :rating, :park_code, :description, :weatherInfo, :img_url, :directionsUrl)
  end

end