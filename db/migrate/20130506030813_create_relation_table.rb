class CreateRelationTable < ActiveRecord::Migration
  def up
    drop_table :genre_local_point
    create_table :genres_local_points do |t|
      t.integer :local_point_id
      t.integer :genre_id
      t.timestamps
    end
  end

  def down
    drop_table :genres_local_points
    create_table :genre_local_point do |t|
      t.integer :local_point_id
      t.integer :genre_id
      t.timestamps
    end
  end
end
