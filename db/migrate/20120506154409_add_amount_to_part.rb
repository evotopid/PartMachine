class AddAmountToPart < ActiveRecord::Migration
  def change
    add_column :parts, :amount, :integer
  end
end
