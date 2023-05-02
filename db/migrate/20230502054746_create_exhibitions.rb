class CreateExhibitions < ActiveRecord::Migration[7.0]
  def change
    create_table :exhibitions do |t|
      t.integer moray_id
      t.integer aquarium_id

      t.timestamps
    end
  end
end
