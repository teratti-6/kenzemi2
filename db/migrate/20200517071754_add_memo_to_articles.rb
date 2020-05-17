class AddMemoToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :memo, :text
  end
end
