class Api::V1::LogsController < ApplicationController
  def index
    @logs = Log.all
    render json: LogSerializer.new(@logs), status: 200
  end

  def create
    @log = Log.new(log_param)
    @log.user_id = params[:user_id]
    if @log.save!
      render json: LogSerializer.new(@log), status: 200
    else
      render json: {message: 'log must have unique date'}, status: 400
    end
  end

  def show
  end

  def update
  end

  private
  def log_param
    params.require(:log).permit(:caldate)
  end
end
