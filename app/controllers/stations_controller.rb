class StationsController < ApplicationController

  def index
    @stations = Station.all
  end

  def create
    @station = Station.new(station_params)
    if @station.save
      flash[:notice] = 'Station added'
      redirect_to stations_path
    else
      render 'new'
    end
  end

  def new
    @station = Station.new
  end

  def edit
    @station = Station.find(params[:id])
  end

  def show
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(station_params)
      flash[:notice] = 'Station added'
      redirect_to station_path(@station)
    else
      render 'edit'
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    flash[:notice] = 'Station removed'
    redirect_to root_path
  end

  private
  def station_params
    params.require(:station).permit(:name)
  end
end
