class Api::V1::UsersController < ApplicationController
  def create
    @user = User.find_by(email: user_params[:email])

    if @user && @user.authenticate(user_params[:password])
      render json: {user: UserSerializer.new(@user)}, status: 200
    elsif !@user
      @new_user = User.new(user_params)
      if @new_user.valid?
        @new_user.save!
        render json: {user: UserSerializer.new(@new_user)}, status: 200
      else
        render json: {error: 'failed to register user'}, status: 400
      end
    else
      render json: {error: 'failed to login user'}, status: 400
    end
  end

  def show
    user = User.find_by(id: params[:id])
    render json: {user: UserSerializer.new(user)}, status: 200
  end

  private
  def login_params
    params.require(:user).permit(:email, :password)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :carb_grams, :protein_grams, :fat_grams)
  end
end
