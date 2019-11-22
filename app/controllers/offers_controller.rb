class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :update]

  def index
    # @offers = Offer.all
    if params[:query].present?
      sql_query = " \
        offers.title @@ :query \
        OR games.name @@ :query \
      "
      @offers = Offer.joins(:game).where(sql_query, query: "%#{params[:query]}%")
    else
      @offers = Offer.all
    end
  end

  def show
    @offer = Offer.all.find { |offer| offer['id'] == params[:id].to_i }
  end

  def update
    @offer = Offer.all.find(params[:id])
    if @offer.update(offer_params)
      redirect_to my_offers_path, notice: 'Offer was successfuly booked!'
    else
      render :show
    end
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:user_id)
  end
end
