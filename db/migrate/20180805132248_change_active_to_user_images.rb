class ChangeActiveToUserImages < ActiveRecord::Migration[5.2]
  def down
    change_column_default :user_images, :active,0
  end
end
