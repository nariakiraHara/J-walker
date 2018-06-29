class RenameHeadColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :head, :header
  end
end
