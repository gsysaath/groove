class RemoveMailNameFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :mail, :string
  end
end
