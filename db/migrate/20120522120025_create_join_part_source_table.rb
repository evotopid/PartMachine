class CreateJoinPartSourceTable < ActiveRecord::Migration
  def change
    create_table :parts_sources do |t|
      t.integer :part_id
      t.integer :source_id
    end
  end
end
