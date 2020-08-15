
class Api::V1::ParksController < ApplicationController
  skip_before_action :authorized, only: [:show, :index]

end