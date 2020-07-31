class AddReferencesToImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :images, :subject, null: false, foreign_key: true
    add_reference :images, :lesson, null: false, foreign_key: true
  end
end
