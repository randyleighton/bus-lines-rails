class StationsController < ApplicationController

  def index
    @stops = Stop.all
  end

  def create
    @stop = Stop.new(station_params)
    if @stop.save
      flash[:notice] = 'Stop added'
      redirect_to stops_path
    else
      render 'new'
    end
  end

  def new
    @stop = Stop.new
  end

  def edit
    @stop = Stop.find(params[:id])
  end

  def show
    @stop = Stop.find(params[:id])
  end

  def update
    @stop = Stop.find(params[:id])
    if @stop.update(station_params)
      flash[:notice] = 'Stop added'
      redirect_to stop_path(@stop)
    else
      render 'edit'
    end
  end

  def destroy
    @stop = Stop.find(params[:id])
    @stop.destroy
    flash[:notice] = 'Stop removed'
    redirect_to root_path
  end

  private
  def stop_params
    params.require(:stop).permit(:station_id, :line_id)
  end
end
