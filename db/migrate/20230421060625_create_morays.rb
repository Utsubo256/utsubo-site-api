class CreateMorays < ActiveRecord::Migration[7.0]
  def change
    create_table :morays do |t|

      t.timestamps
    end
  end
end
