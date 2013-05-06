class AddColumnFee < ActiveRecord::Migration
  def up
    add_column :local_points, :fee, :string
  end

  def down
    remove_column :local_points, :fee
  end
end
