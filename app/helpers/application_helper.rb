module ApplicationHelper
  def full_title ( page_title )
    title_link = link_to "PartMachine", root_url
    if page_title.nil? or page_title.empty?
      title_link.html_safe
    else
      "#{title_link} > #{page_title}".html_safe
    end
  end
  
  def save_errors ( obj )
    @obj = obj
    render 'shared/save_error'
  end
  
  def parts_grid ( parts )
    @parts = parts.sort
    render 'parts/grid'
  end
end
