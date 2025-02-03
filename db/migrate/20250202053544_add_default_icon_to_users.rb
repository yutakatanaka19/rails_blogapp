class AddDefaultIconToUsers < ActiveRecord::Migration[8.0]
  def change
    change_column_default :users, :icon, "app/assets/images/image.png"
  end
end
