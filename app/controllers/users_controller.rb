class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :correct_user?, :except => [:index]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @userinterest = UserInterest.new
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render 'show', notice: 'Profile updated!'
    else
      render 'show', notice: 'ERRRAAHH'
    end
  end

  private
  def user_params
    params.require(:user).permit({interest_id: []})
  end
end
