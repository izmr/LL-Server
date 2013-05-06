class AddDeletedAtColumn < ActiveRecord::Migration
  def up
    add_column :local_points, :deleted_at, :timestamp
  end

  def down
    remove_column :local_points, :deleted_at
  end
end
