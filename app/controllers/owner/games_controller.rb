class Owner::GamesController < ApplicationController
  def index
    @games = Game.where(user: current_user)
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to owner_games_path
    else
      render :new
    end
  end

  def new
    @game = Game.new
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to owner_games_path
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to owner_games_path(@game)
    else
      render :edit
    end
  end

  private

  def game_params
    params.require(:game).permit(:name, :description)
  end
end
