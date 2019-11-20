class OffersController < ApplicationController

skip_before_action :authenticate_user!, only: :index

  before_action :set_offer

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.all.find { |offer| offer['id'] == params[:id].to_i }
  end

  def update
    @offer = Offer.all.find(params[:id])
    if @offer.update(offer_params)
      redirect_to my_offer, notice: 'Offer was successfuly booked!'
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
