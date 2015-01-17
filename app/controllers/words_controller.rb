class WordsController < ApplicationController
  respond_to :json, :html

  def index
    respond_with Word.all
  end

  def show
    respond_with Word.find(params[:id])
  end

  def create
    respond_with Word.create(params[:content])
  end

  def update
    respond_with Word.update(params[:id], params[:content])
  end

  def destroy
    respond_with Word.destroy(params[:id])
  end
end
