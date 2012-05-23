class ConvertHasAndBelongsToManyPartsSourcesToHasMany < ActiveRecord::Migration
  def up
    drop_table :parts_sources
    change_table :sources do |t|
      t.integer :part_id
    end
  end
  
  def down
    puts "ERROR: DOWN ISNT SUPPORTED BY THIS MIGRATION!!!"
  end
end
