class PostReactionsController < ApplicationController
  before_action :set_post_reaction, only: %i[ show edit update destroy ]

  # GET /post_reactions or /post_reactions.json
  def index
    @post_reactions = PostReaction.all
  end

  # GET /post_reactions/1 or /post_reactions/1.json
  def show
  end

  # GET /post_reactions/new
  def new
    @post_reaction = PostReaction.new
  end

  # GET /post_reactions/1/edit
  def edit
  end

  # POST /post_reactions or /post_reactions.json
  def create
    @post_reaction = PostReaction.new(post_reaction_params)

    respond_to do |format|
      if @post_reaction.save
        format.html { redirect_to post_reaction_url(@post_reaction), notice: "Post reaction was successfully created." }
        format.json { render :show, status: :created, location: @post_reaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post_reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_reactions/1 or /post_reactions/1.json
  def update
    respond_to do |format|
      if @post_reaction.update(post_reaction_params)
        format.html { redirect_to post_reaction_url(@post_reaction), notice: "Post reaction was successfully updated." }
        format.json { render :show, status: :ok, location: @post_reaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post_reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_reactions/1 or /post_reactions/1.json
  def destroy
    @post_reaction.destroy!

    respond_to do |format|
      format.html { redirect_to post_reactions_url, notice: "Post reaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_reaction
      @post_reaction = PostReaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_reaction_params
      params.require(:post_reaction).permit(:post_id, :profile_id, :reaction_id)
    end
end
