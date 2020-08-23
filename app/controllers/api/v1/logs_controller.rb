class Api::V1::LogsController < ApplicationController
  def index
    @logs = Log.all
    render json: LogSerializer.new(@logs), status: 200
  end

  def create
  end

  def show
  end

  def update
  end
end
