class OffersController < ApplicationController
  before_action :set_offer
  def index
  end

  def show
    @offer = Offer.all.find { |offer| offer['id'] == params[:id].to_i }
  end

  def update
    # @offer = Offer.all.find(params[:id])
    # if @offer.update(offer_params)
    # end
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  # def offer_params
  #   params.require(:offer).permit
  # end
end
