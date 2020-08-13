

class Api::V1::ParksController < ApplicationController

  def index
    @parks = Park.all
  end

  def search
    @parks = find_park(params[:state])
    @arrayofParks
  end

  private
end