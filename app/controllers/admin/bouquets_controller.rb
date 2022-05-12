class Admin::BouquetsController < ApplicationController
  def index
    @bouquets = Bouquet.all
    @flowering_seasons = FloweringSeason.all
  end

  def new
    @bouquet = Bouquet.new
    @flowering_seasons = FloweringSeason.all
  end

  def create
    @bouquet = Bouquet.new(bouquet_params)
    #@item.genre_id
    @bouquet.save
    redirect_to admin_bouquets_path
  end

  def show
    @bouquet = Bouquet.find(params[:id])
    @bouquets = Bouquet.all
  end

  def edit
    @bouquet = Bouquet.find(params[:id])
    @flowering_seasons = FloweringSeason.all
  end

  def update
    @bouquet = Bouquet.find(params[:id])
    @bouquet.update(bouquet_params)
    redirect_to admin_bouquets_path
  end

  



   private

  def bouquet_params
    # params.require(:bouquet).permit(:name, :image, :introduction)
    params.require(:bouquet).permit(:flowering_season_id, :name, :image, :introduction, :flower_language, :birth)
  end
end
