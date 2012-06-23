class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :load_layout_data
  
  def load_layout_data
    @categories = Category.all
  end
end
