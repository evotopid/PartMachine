class SourcesController < ApplicationController
  
  def _load_parts
    parts = Part.all
    @parts = []
    parts.each do |part|
      @parts << [part.name, part.id]
    end
    
    if defined? params[:part_id]
      @part_id = params[:part_id]
    else
      @part_id = 0
    end
  end
  
  def _select_layout
    if defined? params[:layout]
      if params[:layout] == "popup"
        render layout: "popup"
      end
    end
  end
  
  def index
    @sources = Source.all
  end
  
  def show
    @source = Source.find(params[:id])
  end

  def new
    _load_parts
    
    @source = Source.new
    _select_layout
  end

  def edit
    _load_parts
    
    @source = Source.find(params[:id])
    @part_id = @source.part_id
  end

  def create
    @source = Source.new(params[:source])
    
    if @source.save
      render json: {type: "success", message: "Source was successfully created.", source: @source}
    else
      render json: {type: "fail", message: "There are some errors.", errors: @source.errors}
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

    respond_to do |format|
      format.html { redirect_to :back, notice: 'Source was successfully deleted.' }
      format.json { render json: {type: "success", message: "Source was successfully deleted." } }
    end
    
  end
end
