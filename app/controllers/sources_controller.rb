class SourcesController < ApplicationController
  def index
    @sources = Source.all
  end
  
  def show
    @source = Source.find(params[:id])
  end

  def new
    @source = Source.new
  end

  def edit
    @source = Source.find(params[:id])
  end

  def create
    @source = Source.new(params[:source])

    if @source.save
      redirect_to @source, notice: 'Source was successfully created.'
    else
      format.html { render action: "new" }
    end
  end
  
  def update
    @source = Source.find(params[:id])

    if @source.update_attributes(params[:source])
      redirect_to @source, notice: 'Source was successfully updated.'
    else
      render action: "edit"
    end
  end
  
  def destroy
    @source = Source.find(params[:id])
    @source.destroy

    redirect_to sources_url
  end
end
