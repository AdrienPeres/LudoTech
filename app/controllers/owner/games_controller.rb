class Owner::GamesController < ApplicationController
  def index
    @games = Game.where(user: current_user)
  end

  def new
    # TO DO
  end

  def create
    # TO DO
  end
end
