class AddProfileToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :region_id, :integer
    add_column :users, :prefecture_id, :integer
    add_column :users, :city_id, :integer
    add_column :users, :birthday, :string
    add_column :users, :want, :string
  end
end
