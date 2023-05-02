class CreateExhibitions < ActiveRecord::Migration[7.0]
  def change
    create_table :exhibitions do |t|
      t.integer :moray_id
      t.integer :aquarium_id
      t.datetime :discarded_at

      t.timestamps
    end
    add_index :exhibitions, :moray_id
    add_index :exhibitions, :aquarium_id
    add_index :exhibitions, [:moray_id, :aquarium_id], unique: true
  end
end
