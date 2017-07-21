class PlayController < ApplicationController
  access all: :all, admin: :all

  def index
  end

  def room
    @room = Room.find params[:id]
  end

  def user_games
    if params[:username]
      @user = User.find_by username: params[:username]
    else
      @user = current_user
    end
    @games = @user.games
  end
end
