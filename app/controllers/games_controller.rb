class GamesController < ApplicationController
  access user: :all, admin: :all
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  def index
    @games = current_user.games
  end

  # GET /games/1
  def show
  end

  # GET /games/new
  def new
    @game = current_user.games.build
    @game.build_first_room
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  def create
    @game = current_user.games.create(game_params)
    @game.first_room.game = @game

    if @game.save
      redirect_to @game, notice: 'Game was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      redirect_to @game, notice: 'Game was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
    redirect_to games_url, notice: 'Game was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
      @game.validate_ownership current_user
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:title, :first_room_id, first_room_attributes: [:title, :body])
    end
end
