class GameController < ApplicationController
  def index
  end

  def room
      @room = Room.find(params[:id])
  end
end
