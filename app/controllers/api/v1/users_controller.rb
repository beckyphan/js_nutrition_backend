class Api::V1::UsersController < ApplicationController
  def create
    @user = User.find_by(email: user_params[:email])
    @new_user = User.new(user_params)

    if !@user && @new_user.valid?
      @new_user.save!
      render json: {user: UserSerializer.new(@new_user)}, status: 200
    else
      @new_user.save
      render json: {errors: @new_user.errors.full_messages}, status: 400
    end
  end

  def login
    @user = User.find_by(email: login_params[:email])
    if @user && @user.authenticate(user_params[:password])
      render json: {user: UserSerializer.new(@user)}, status: 200
    elsif @user
      render json: {errors: "Failed to Authenticate"}, status: 400
    else
      render json: {errors: "Failed to Find Email"}, status: 400
    end
  end

  private
  def login_params
    params.require(:user).permit(:email, :password)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :carb_grams, :protein_grams, :fat_grams)
  end
end
