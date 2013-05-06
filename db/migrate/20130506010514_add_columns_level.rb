class AddColumnsLevel < ActiveRecord::Migration
  def up
    add_column :local_points, :level_id, :int
  end

  def down
    remove_column :local_points, :level_id
  end
end
