class Public::BouquetsController < ApplicationController
   #before_action :search
  before_action :set_q, only: [:index, :search]
  # def search
  #   # params[:q]のqには検索フォームに入力した値が入る
  #   # @q = Bouquet.ransack(params[:q])
  # end
   def search
    @results = @q.result
   end

  def index
    # @q = Bouquet.ransack(params[:q])
    # @bouquets = @q.result(distinct: true)
    @bouquets = Bouquet.all
    @flowering_seasons = FloweringSeason.all
  end

  def show
    @bouquet = Bouquet.find(params[:id])
    @bouquets = Bouquet.all
  end


  private
  def set_q
    @q = Bouquet.ransack(params[:q])
  end

  def bouquet_params
    # params.require(:bouquet).permit(:name, :image, :introduction)
    params.require(:bouquet).permit(:flowering_season_id, :name, :image, :introduction, :flower_language, :birth)
  end
end
