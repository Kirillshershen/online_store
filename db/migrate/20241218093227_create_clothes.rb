class CreateClothes < ActiveRecord::Migration[7.2]
  def change
    create_table :clothes do |t|
      t.string :name
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
