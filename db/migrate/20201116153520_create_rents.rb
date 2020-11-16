class CreateRents < ActiveRecord::Migration[6.0]
  def change
    create_table :rents do |t|
      t.float :price
      t.datetime :start_date
      t.datetime :end_date
      t.references :vinyl, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
