class UsersController < ApplicationController

  def index
    @users = User.all

    render json: @users
  end

  def show
    @user = User.find(params[:id])

    render json: @user
  end

  def new
    @user = Review.new(user_params)
  end

  def create
    @user = User.new(user_params)
      if @user.valid?
    @user = User.save
      render json: @user
    end
  end

private

def user_params
  require(:user).permit(:username)
end

end
