class CreateTableGenreLocalPoint < ActiveRecord::Migration
  def up
    create_table :genre_local_point do |t|
      t.integer :local_point_id
      t.integer :genre_id
      t.timestamps
    end
  end

  def down
    drop_table :genre_local_point
  end
end
