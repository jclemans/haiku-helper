class Api::V1::HaikusController < ApplicationController
  respond_to :json

  def index
    respond_with Haiku.all
  end

  def show
    respond_with Haiku.find(params[:id])
  end

  def create
    binding.pry
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
end