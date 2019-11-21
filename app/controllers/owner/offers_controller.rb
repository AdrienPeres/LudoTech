class Owner::OffersController < ApplicationController
  def index
    @offers = Offer.where(game: current_user)
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :game_id, :date)
  end
end
