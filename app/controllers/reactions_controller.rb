class ReactionsController < ApplicationController
  before_action :set_reaction, only: %i[ show edit update destroy ]

  # GET /reactions or /reactions.json
  def index
    @reactions = Reaction.all
  end

  # GET /reactions/1 or /reactions/1.json
  def show
  end

  # GET /reactions/new
  def new
    @reaction = Reaction.new
  end

  # GET /reactions/1/edit
  def edit
  end

  # POST /reactions or /reactions.json
  def create
    @reaction = Reaction.new(reaction_params)

    respond_to do |format|
      if @reaction.save
        format.html { redirect_to reaction_url(@reaction), notice: "Reaction was successfully created." }
        format.json { render :show, status: :created, location: @reaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reactions/1 or /reactions/1.json
  def update
    respond_to do |format|
      if @reaction.update(reaction_params)
        format.html { redirect_to reaction_url(@reaction), notice: "Reaction was successfully updated." }
        format.json { render :show, status: :ok, location: @reaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reactions/1 or /reactions/1.json
  def destroy
    @reaction.destroy!

    respond_to do |format|
      format.html { redirect_to reactions_url, notice: "Reaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reaction
      @reaction = Reaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reaction_params
      params.require(:reaction).permit(:name)
    end
end
