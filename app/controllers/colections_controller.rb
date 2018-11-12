class ColectionsController < ApplicationController
before_action :set_colection, only: [:show, :edit, :update, :destroy]

  def index
    @colections = Colection.all
  end
  def create
    @colection = Colection.new(colection_params)
    respond_to do |format|
      if @colection.save
        format.html { redirect_to @colection }
      end

    end
    #code
  end
  def show
    #code
  end
  def new
    @colection = Colection.new
    @colection.save
  end
  def update
    #code
  end
  def destroy
    #code
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_colection
    @colection = Colection.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def colection_params
    params.require(:colection).permit(:name, :descriptions, :url_image)
  end
end
