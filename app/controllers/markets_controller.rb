class MarketsController < ApplicationController
  def index
    @markets = Market.order('created_at DESC')
  end

  def new
    @market = Market.new
  end

  def create
    @market = Market.new(market_params)
    if @market.save
      flash[:success] = "market added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @market = Market.find(params[:id])
  end

  def edit
    @market = Market.find(params[:id])
  end

  private

  def market_params
    params.require(:market).permit(:title, :raw_address, :visited_by)
  end
end