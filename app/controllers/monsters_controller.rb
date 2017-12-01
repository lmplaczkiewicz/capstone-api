class MonstersController < ProtectedController
  before_action :set_monster, only: [:show, :update, :destroy]

  # GET /monsters
  def index
    @monsters = current_user.monsters.order(:name)

    render json: @monsters
  end

  # GET /monsters/1
  def show
    render json: @monster
  end

  # POST /monsters
  def create
    @monster = current_user.monsters.build(monster_params)

    if @monster.save
      render json: @monster, status: :created, location: @monster
    else
      render json: @monster.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /monsters/1
  def update
    if @monster.update(monster_params)
      render json: @monster
    else
      render json: @monster.errors, status: :unprocessable_entity
    end
  end

  # DELETE /monsters/1
  def destroy
    @monster.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster
      @monster = current_user.monsters.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def monster_params
      params.require(:monster).permit(:name, :health, :armor, :xp)
    end
end
