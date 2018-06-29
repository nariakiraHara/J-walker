class RenameWantColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :want, :dream_place
  end
end
