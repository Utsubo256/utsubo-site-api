class CreateMorays < ActiveRecord::Migration[7.0]
  def change
    create_table :morays do |t|
      t.string :avatar
      t.string :name_ja
      t.string :name_en
      t.string :name_academic
      t.float :max_length
      t.string :max_length_str
      t.string :distribution
      t.text :description
      t.string :video_url
      t.datetime :discarded_at

      t.timestamps
    end
    add_index :morays, :discarded_at
  end
end
