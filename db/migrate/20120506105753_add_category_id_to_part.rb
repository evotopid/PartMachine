class AddCategoryIdToPart < ActiveRecord::Migration
  def change
    add_column :parts, :category_id, :integer
  end
end
