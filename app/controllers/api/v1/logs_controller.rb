class Api::V1::LogsController < ApplicationController
  def index
    @logs = Log.all
    render json: LogSerializer.new(@logs), status: 200
  end

  def create
    @log = Log.new(log_param)
    @log.user_id = params[:user_id]
    if @log.valid?
      @log.save
      render json: LogSerializer.new(@log), status: 200
    else
      @log = Log.find_by(log_param)
      redirect_to action: "show", id: @log.id
    end
  end

  def show
    @log = Log.find_by_id(params[:id])
    render json: LogSerializer.new(@log), status: 200
  end

  # def update
  # end

  private
  def log_param
    params.require(:log).permit(:caldate)
  end
end
