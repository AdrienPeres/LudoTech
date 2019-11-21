class Owner::OffersController < ApplicationController
  def index
    @offers = Offer.where(game: current_user)
  end

  def new
    @offer = Offer.new
  end

  def create
    @game = Game.find(params[:id])
    @offer = Offer.new(offer_params)
    @offer.game = @game
    if @offer.save
      redirect_to owner_offers_path
    else
      render "/owner/offers/new"
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :date)
  end
end
