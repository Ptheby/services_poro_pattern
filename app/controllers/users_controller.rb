class UsersController < ApplicationController
  def create
    user = UserService::Base.create_user(user_params)
    if user.valid?
      render json: user, status: :created
    else
      render json: user, status: :unprocessable_entity
    end
    def index
      users = UserService::Base.filter_users(params)
      render json: users, status: :ok
    end
  end

  private

  def user_params
    params.permit(:name, :email)
  end




end