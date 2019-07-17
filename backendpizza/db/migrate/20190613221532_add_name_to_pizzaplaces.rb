class AddNameToPizzaplaces < ActiveRecord::Migration[5.2]
  def change
    add_column :pizzaplaces, :name, :string
  end
end
