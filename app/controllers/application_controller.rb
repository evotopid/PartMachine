class ApplicationController < ActionController::Base
  protect_from_forgery
    
  before_filter :load_layout_data
  
  def load_layout_data
    @categories = Category.all
  end
  
  def auto_select_layout
    if defined? params[:layout]
      if params[:layout] == "popup"
        render layout: "popup"
      end
    else
      # just use default
    end
  end
end
