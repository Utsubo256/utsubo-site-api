class AddVideoUrlToAquaria < ActiveRecord::Migration[7.0]
  def change
    add_column :aquaria, :video_url, :string
  end
end
