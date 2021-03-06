class PlayersController < ApplicationController
  def index
    @q = Player.ransack(params[:q])
    @players = @q.result(:distinct => true).includes(:team, :tee_times, :match).page(params[:page]).per(10)

    render("players/index.html.erb")
  end

  def show
    @tee_time = TeeTime.new
    @player = Player.find(params[:id])

    render("players/show.html.erb")
  end

  def new
    @player = Player.new

    render("players/new.html.erb")
  end

  def create
    @player = Player.new

    @player.name = params[:name]
    @player.phone_number = params[:phone_number]
    @player.handicap_index = params[:handicap_index]
    @player.match_id = params[:match_id]
    @player.team_id = params[:team_id]

    save_status = @player.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/players/new", "/create_player"
        redirect_to("/players")
      else
        redirect_back(:fallback_location => "/", :notice => "Player created successfully.")
      end
    else
      render("players/new.html.erb")
    end
  end

  def edit
    @player = Player.find(params[:id])

    render("players/edit.html.erb")
  end

  def update
    @player = Player.find(params[:id])

    @player.name = params[:name]
    @player.phone_number = params[:phone_number]
    @player.handicap_index = params[:handicap_index]
    @player.match_id = params[:match_id]
    @player.team_id = params[:team_id]

    save_status = @player.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/players/#{@player.id}/edit", "/update_player"
        redirect_to("/players/#{@player.id}", :notice => "Player updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Player updated successfully.")
      end
    else
      render("players/edit.html.erb")
    end
  end

  def destroy
    @player = Player.find(params[:id])

    @player.destroy

    if URI(request.referer).path == "/players/#{@player.id}"
      redirect_to("/", :notice => "Player deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Player deleted.")
    end
  end
end
