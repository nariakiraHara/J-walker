class RenameHeaderColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :header, :title
  end
end
