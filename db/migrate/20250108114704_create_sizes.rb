class CreateSizes < ActiveRecord::Migration[7.2]
  def change
    create_table :sizes do |t|
      t.string :size_type, null: false  
      t.integer :size_value, null: false 
      t.references :cloth_type, null: false, foreign_key: true  

      t.timestamps
    end
  end
end
