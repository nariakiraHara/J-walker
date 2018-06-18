class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :head
      t.text :content
      t.integer :region_id
      t.integer :prefecture_id
      t.integer :city_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
