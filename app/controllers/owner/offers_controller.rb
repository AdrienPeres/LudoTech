class Owner::OffersController < ApplicationController
  def index
    @offers = Offer.joins(:game).where("games.user_id = ?", current_user.id)
  end

  def new
    @offer = Offer.new
  end

  def create
    @game = Game.find(params[:game_id])
    @offer = Offer.new(offer_params)
    @offer.game = @game
    if @offer.save
      redirect_to owner_offers_path
    else
      render :new
    end
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update(offer_params)
      redirect_to owner_offers_path(@offer)
    else
      render :edit
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.delete
    redirect_to owner_offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :date)
  end
end
