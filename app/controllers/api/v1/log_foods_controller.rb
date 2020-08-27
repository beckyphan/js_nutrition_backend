class Api::V1::LogFoodsController < ApplicationController
  def index
    @log_foods = LogFoods.all
    render json: LogFoodsSerializer.new(@log_foods), status: 200
  end

  def create
  end

  def update
  end

  def destroy
  end
end
