class PlayersController < ApplicationController
  def index
    @players = Player.page(params[:page]).per(10)
  end

  def show
    @player = Player.find(params[:id])
  end
end
