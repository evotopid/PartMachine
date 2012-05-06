module ApplicationHelper
  def full_title ( page_title )
    if page_title.nil? or page_title.empty?
      "PartMachine"
    else
      "PartMachine > #{page_title}"
    end
  end
end
