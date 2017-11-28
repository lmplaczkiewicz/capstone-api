class PlayerClassesController < ApplicationController
  before_action :set_player_class, only: [:show, :update, :destroy]

  # GET /player_classes
  def index
    @player_classes = PlayerClass.all

    render json: @player_classes
  end

  # GET /player_classes/1
  def show
    render json: @player_class
  end

  # POST /player_classes
  def create
    @player_class = PlayerClass.new(player_class_params)

    if @player_class.save
      render json: @player_class, status: :created, location: @player_class
    else
      render json: @player_class.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /player_classes/1
  def update
    if @player_class.update(player_class_params)
      render json: @player_class
    else
      render json: @player_class.errors, status: :unprocessable_entity
    end
  end

  # DELETE /player_classes/1
  def destroy
    @player_class.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_class
      @player_class = PlayerClass.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def player_class_params
      params.require(:player_class).permit(:name, :str, :dex, :con, :wis, :int, :cha)
    end
end
