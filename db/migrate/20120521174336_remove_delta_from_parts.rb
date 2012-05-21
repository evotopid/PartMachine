class RemoveDeltaFromParts < ActiveRecord::Migration
  def up
    remove_column :parts, :delta
  end

  def down
  end
end
