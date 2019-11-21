class Owner::GamesController < ApplicationController
  def index
    @games = Game.where(user: current_user)
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to owner_games_index
    else
      render :new
    end
  end

  def new
    @game = Game.new
  end

  private

  def game_params
    params.require(:game).validate(:name)
  end
end
