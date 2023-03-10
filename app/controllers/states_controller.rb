# frozen_string_literal: true

class StatesController < ApplicationController
  before_action :set_state, only: %i[show edit update destroy]
  http_basic_authenticate_with name: "admin", password: "lykozrout", only: [:index]

  # GET /states or /states.json
  def index
    @entities = Entity.all.order('seq')
    @features = Feature.all.order('seq')
    @states = State.all
    @sexes = Sex.all
  end

  # GET /states/1 or /states/1.json
  def show; end

  # GET /states/new
  def new
    @state = State.new
    @character = Character.find(params['character'])
  end

  # GET /states/1/edit
  def edit
    @character = @state.character
  end

  # POST /states or /states.json
  def create
    @state = State.new(state_params)

    respond_to do |format|
      if @state.save
        format.html { redirect_to states_url, notice: 'Stav byl vytvořen.' }
        format.json { render :show, status: :created, location: @state }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /states/1 or /states/1.json
  def update
    respond_to do |format|
      if @state.update(state_params)
        format.html { redirect_to states_url, notice: 'Stav byl uložen.' }
        format.json { render :show, status: :ok, location: @state }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /states/1 or /states/1.json
  def destroy
    @state.destroy

    respond_to do |format|
      format.html { redirect_to states_url, notice: 'Stav byl odstraněn.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_state
    @state = State.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def state_params
    params.require(:state).permit(:character_id, :entity_id, :sex_id, :value_min, :value_max, :image, :show_in_key)
  end
end
