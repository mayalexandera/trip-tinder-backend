class Api::V1::UsersController < ApplicationController

  before_action :require_signed_in!, only: [:show, :edit, :update, :index, :trips]

  def index
    @users = User.all
  end

  def show
    @user = current_user
  end

  def create
    @user = User.new(user_params)
    sign_in!(@user)
  end


  private
  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name, :bio, :avatar)
  end

  def set_user
    @user = current_user
  end
end


