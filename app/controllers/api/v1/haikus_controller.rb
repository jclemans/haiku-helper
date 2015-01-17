class Api::V1::HaikusController < ApplicationController
  respond_to :json, :html

  def index
    respond_with Haiku.all
  end

  def show
    respond_with Haiku.find(params[:id])
  end

  def create
    respond_with Haiku.create(params[:content])
  end

  def update
    respond_with Haiku.update(params[:id], params[:content])
  end

  def destroy
    respond_with Haiku.destroy(params[:id])
  end
end