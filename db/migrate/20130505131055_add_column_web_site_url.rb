class AddColumnWebSiteUrl < ActiveRecord::Migration
  def up
    add_column :local_points, :site_url, :string
  end

  def down
    remove_column :local_points, :site_url
  end
end
