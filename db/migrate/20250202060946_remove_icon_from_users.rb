class RemoveIconFromUsers < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :icon, :string
  end
end
