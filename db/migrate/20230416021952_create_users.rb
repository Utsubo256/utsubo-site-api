class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :uid, null: false
      t.string :name, nul: false
      t.string :avatar

      t.timestamps
    end
    add_index :users, :uid, unique: true
  end
end