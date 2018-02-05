class DistancesController < ApplicationController
  def new
    @markets = market.all
  end

  def create
  @from = market.find_by(id: params[:from])
  @to = market.find_by(id: params[:to])
    if @from && @to
	    flash[:success] =
	        "The distance between <b>#{@from.title}</b> and <b>#{@to.title}</b> is #{@from.distance_from(@to.to_coordinates)} km"
	end
    redirect_to new_distance_path
  end
end