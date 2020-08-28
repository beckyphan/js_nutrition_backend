class Api::V1::LogFoodsController < ApplicationController
  def index
    @log_foods = LogFood.all
    render json: LogFoodSerializer.new(@log_foods), status: 200
  end

  def create
    @log = Log.find_by(caldate: params[:logDate])
    @log_food = LogFood.new(log_food_params)
    @log_food.log_id = @log.id

    if @log_food.save!
      render json: LogFoodSerializer.new(@log_food), status: 200
    end
  end

  def update
  end

  def destroy
  end

  private
  def log_food_params
    params.require(:log_food).permit(:quantity, :food_id)
  end
end
