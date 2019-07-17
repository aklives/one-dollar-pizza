class RenameColumn < ActiveRecord::Migration[5.2]

  def change
    rename_column :reviews, :pizza_id, :pizzaplace_id
  end

end
