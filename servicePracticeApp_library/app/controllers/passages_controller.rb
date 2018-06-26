class PassagesController < ApplicationController
  before_action :set_passage, only: [:show, :update, :destroy]

  # GET /passages
  def index
    @passages = Passage.all

    render json: @passages
  end

  # GET /passages/1
  def show
    render json: @passage
  end

  # POST /passages
  def create
    @passage = Passage.new(passage_params)

    if @passage.save
      render json: @passage, status: :created, location: @passage
    else
      render json: @passage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /passages/1
  def update
    if @passage.update(passage_params)
      render json: @passage
    else
      render json: @passage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /passages/1
  def destroy
    @passage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passage
      @passage = Passage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def passage_params
      params.require(:passage).permit(:header, :introduction, :text)
    end
end
