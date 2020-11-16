class CreateVinyls < ActiveRecord::Migration[6.0]
  def change
    create_table :vinyls do |t|
      t.string :name
      t.integer :year
      t.string :artist
      t.string :genre
      t.string :label
      t.string :quality
      t.string :dimension
      t.float :price_per_day
      t.boolean :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
