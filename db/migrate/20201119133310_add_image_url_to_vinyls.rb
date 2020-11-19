class AddImageUrlToVinyls < ActiveRecord::Migration[6.0]
  def change
    add_column :vinyls, :image_url, :string
  end
end
