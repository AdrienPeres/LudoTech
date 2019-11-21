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
    # rattachée au btn delete = à faire depuis l'html de l'index?

    # BTN DELETE <%= link_to "Delete", game_path(game),
    #   method: :delete,
    #   data: { confirm: "Supprimer?" } %>
  end

  def update
    if @game.update(game_params)
      redirect_to owner_games_index_path(@game)
    else
      render :edit
    end
    # rattachée au btn update
    # <%= link_to "Update", game_path(game),
    #   method: :update,
    #   data: { confirm: "Update?" } %>
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :photo)
  end
end
