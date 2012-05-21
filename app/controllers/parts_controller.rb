class PartsController < ApplicationController
  def index
    @parts = Part.all
  end

  def show
    @part = Part.find(params[:id])
  end

  def new
    @part = Part.new
  end

  def edit
    @part = Part.find(params[:id])
  end

  def create
    @part = Part.new(params[:part])

    if @part.save
      redirect_to @part, notice: 'Part was successfully created.'
    else
      render action: "new"
    end
  end
  
  def update
    @part = Part.find(params[:id])

    if @part.update_attributes(params[:part])
      redirect_to @part, notice: 'Part was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @part = Part.find(params[:id])
    @part.destroy

    redirect_to parts_url
  end
  
  def search
    @parts = Part.search_for params[:query]
    @search_query = params[:query]
    render action: "index"
  end
end
