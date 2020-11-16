class AddMailNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :mail, :string
  end
end
