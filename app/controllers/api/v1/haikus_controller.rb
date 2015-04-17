class Api::V1::HaikusController < ApplicationController
  respond_to :html, :json

  def index
    @haikus = Haiku.all
    respond_with(@haikus)
  end

  def show
    respond_with Haiku.find(params[:id])
  end

  def create
    @haiku = Haiku.new(haiku_params)
    if @haiku.save
      respond_to do |format|
        format.json { render json: @haiku }
      end
    end
  end

  def update
    respond_with Haiku.update(params[:id], params[:content])
  end

  def destroy
    respond_with Haiku.destroy(params[:id])
  end

private
  def haiku_params
    params.require(:haiku).permit(:content)
  end
end