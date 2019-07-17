class CreatePizzaplaces < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzaplaces do |t|
      t.string :address
      t.float :long
      t.float :lat
      t.integer :average_rating

      t.timestamps
    end
  end
end
