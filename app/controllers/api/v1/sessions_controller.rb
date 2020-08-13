class Api::V1::SessionsController < ApplicationController
  before_action :require_signed_in!, except: [:new, :create]

  def new
    render :new
  end

  def create
    @user = User.find_by_credentials(
      params[:username],
      params[:password]
    )

    sign_in!(@user) if @user
  end

  def logout
    sign_out!
  end

end