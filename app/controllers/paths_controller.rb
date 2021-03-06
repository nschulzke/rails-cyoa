class PathsController < ApplicationController
  access user: :all, admin: :all
  before_action :set_path, only: [:update, :destroy, :edit]

  # GET /paths/new
  def new
    @path = current_user.paths.build
    @path.from_room = Room.find(params[:from_room_id])
    @path.build_to_room
  end

  # GET /paths/1/edit
  def edit
  end

  # POST /paths
  # POST /paths.json
  def create
    @path = current_user.paths.create(path_params)
    @path.from_room = Room.find(params[:from_room_id])
    @path.game = @path.from_room.game
    @path.to_room.game = @path.game
    respond_to do |format|
      if @path.save
        format.html { redirect_to @path.from_room, notice: 'Path was successfully created.' }
        format.json { render :show, status: :created, location: @path }
      else
        format.html { render :new }
        format.json { render json: @path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paths/1
  # PATCH/PUT /paths/1.json
  def update
    respond_to do |format|
      if @path.update(path_params)
        format.html { redirect_to @path.from_room, notice: 'Path was successfully updated.' }
        format.json { render :show, status: :ok, location: @path }
      else
        format.html { render :edit }
        format.json { render json: @path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paths/1
  # DELETE /paths/1.json
  def destroy
    from_room = @path.from_room
    @path.destroy
    respond_to do |format|
      format.html { redirect_to from_room, notice: 'Path was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_path
      @path = Path.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def path_params
      params.require(:path).permit(:choice, :from_room_id, :to_room_id, to_room_attributes: [:title, :body])
    end
end
