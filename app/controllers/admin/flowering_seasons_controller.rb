class Admin::FloweringSeasonsController < ApplicationController
  def index
    @flowering_season = FloweringSeason.new
    @flowering_seasons = FloweringSeason.all
  end

  def create
    flowering_season = FloweringSeason.new(flowering_season_params)
    flowering_season.save
    redirect_to admin_flowering_seasons_path
  end

  def edit
    @flowering_season = FloweringSeason.find(params[:id])
  end

  def update
    flowering_season = FloweringSeason.find(params[:id])
    flowering_season.update(flowering_season_params)
    redirect_to admin_flowering_seasons_path
  end
  
   private
  def flowering_season_params
    params.require(:flowering_season).permit(:season)
  end
end
