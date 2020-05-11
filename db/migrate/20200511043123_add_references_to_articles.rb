class AddReferencesToArticles < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :subject, null: false, foreign_key: true
    add_reference :articles, :lesson, null: false, foreign_key: true
  end
end
