class My::OffersController < ApplicationController
  def index
    @offers = Offer.where(user: current_user)
  end
end
