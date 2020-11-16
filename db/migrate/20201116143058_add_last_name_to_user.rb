class AddLastNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last, :string
  end
end
