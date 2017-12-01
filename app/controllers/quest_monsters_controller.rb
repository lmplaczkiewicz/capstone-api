class QuestMonstersController < ProtectedController
  before_action :set_quest_monster, only: [:show, :update, :destroy]

  # GET /quest_monsters
  def index
    @quest_monsters = current_user.quest_monsters

    render json: @quest_monsters
  end

  # GET /quest_monsters/1
  def show
    render json: @quest_monster
  end

  # POST /quest_monsters
  def create
    @quest_monster = current_user.quest_monsters.build(quest_monster_params)

    if @quest_monster.save
      render json: @quest_monster, status: :created, location: @quest_monster
    else
      render json: @quest_monster.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quest_monsters/1
  def update
    if @quest_monster.update(quest_monster_params)
      render json: @quest_monster
    else
      render json: @quest_monster.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quest_monsters/1
  def destroy
    @quest_monster.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quest_monster
      @quest_monster = current_user.quest_monsters.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quest_monster_params
      params.require(:quest_monster).permit(:quest_id, :monster_id)
    end
end
