class AddAdminFlgToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :test_flg, :boolean
  end
end
