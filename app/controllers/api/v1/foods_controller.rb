class Api::V1::FoodsController < ApplicationController
  def index
    @foods = Food.all
    render json: FoodSerializer.new(@foods), status: 200
  end

  def create
  end

  def update
  end

  def destroy
  end
end
