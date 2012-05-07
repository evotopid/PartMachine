class AddDeltaToPart < ActiveRecord::Migration
  def change
    add_column :parts, :delta, :boolean, default: true, null: false
  end
end
