class AddColumnInstruments < ActiveRecord::Migration
  def up
    add_column :local_points, :instruments, :string
  end

  def down
    remove_column :local_points, :instruments
  end
end
