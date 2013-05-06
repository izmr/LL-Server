class AddIndexLatlng < ActiveRecord::Migration
  def up
    add_index :local_points, [:latitude, :longitude, :updated_at]
  end

  def down
    remove_index :local_points, [:latitude, :longitude, :updated_at]
  end
end
