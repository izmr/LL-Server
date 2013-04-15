class CreateLocalPoints < ActiveRecord::Migration
  def change
    create_table :local_points do |t|
      t.string :point_name
      t.string :address
      t.float  :latitude
      t.float  :longitude
      t.text   :description
      t.timestamps
    end
  end
end
