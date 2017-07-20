class GameController < ApplicationController
  access all: [:room, :index], admin: :all

  def index
  end

  def room
      @room = Room.find(params[:id])
  end
end
