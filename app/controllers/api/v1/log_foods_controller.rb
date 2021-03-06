class Api::V1::LogFoodsController < ApplicationController
  def index
    @log_foods = LogFood.all
    render json: LogFoodSerializer.new(@log_foods), status: 200
  end

  def create
    @log = Log.find_by_id(params[:log_id])
    @log_food = @log.log_foods.new(log_food_params)
    if @log_food.save!
      render json: LogFoodSerializer.new(@log_food), status: 200
    end
  end

  # def update
  # end

  def destroy
    @log_food = LogFood.find_by(id: params[:id])
    @log = Log.find_by_id(@log_food.log_id)
    @log_food.destroy
    render json: LogSerializer.new(@log), status: 200
  end

  private
  def log_food_params
    params.require(:log_food).permit(:quantity, :food_id)
  end
end
