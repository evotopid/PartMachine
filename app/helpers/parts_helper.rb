module PartsHelper
  def categories_list
    categories_raw = Category.all
    categories = []
    categories_raw.each do |category|
      categories << [category.name, category.id]
    end
    categories
  end
end
