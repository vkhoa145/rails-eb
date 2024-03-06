class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    user = User.new(
      name: params[:name],
      age: params[:age],
      email: params[:email]
    )
    if user.save
      redirect_to users_path
    else
      render :new
    end
  end
end
