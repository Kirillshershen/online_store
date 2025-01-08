class CreateClothes < ActiveRecord::Migration[7.2]
  def change



    create_table :clothes do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :season

      t.references :cloth_type, null: false, foreign_key: true


      t.timestamps
    end
  end
end
