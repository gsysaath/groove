class RemoveLastNameFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :last, :string
  end
end
