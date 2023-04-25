class CreateAquaria < ActiveRecord::Migration[7.0]
  def change
    create_table :aquaria do |t|
      t.string :image
      t.string :name
      t.string :address_city
      t.string :address_detail
      t.string :region
      t.text :description
      t.string :site_url
      t.string :business_days_hours_url
      t.string :entrance_fee_url
      t.datetime :discarded_at

      t.timestamps
    end
    add_index :aquaria, :discarded_at
  end
end
