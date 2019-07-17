class AddZipcodeToPizzaplaces < ActiveRecord::Migration[5.2]
  def change
    add_column :pizzaplaces, :zipcode, :integer
  end
end
