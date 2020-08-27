class Api::V1::LogFoodsController < ApplicationController
  def index
    @log_foods = LogFood.all
    render json: LogFoodSerializer.new(@log_foods), status: 200
  end

  def create
  end

  def update
  end

  def destroy
  end
end
