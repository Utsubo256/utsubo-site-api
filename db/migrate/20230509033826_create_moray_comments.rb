class CreateMorayComments < ActiveRecord::Migration[7.0]
  def change
    create_table :moray_comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :moray, null: false, foreign_key: true
      t.text :body
      t.string :image
      t.datetime :discarded_at

      t.timestamps
    end
  end
end
