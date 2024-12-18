class CreateCloths < ActiveRecord::Migration[7.2]
  def change
    create_table :cloths do |t|
      t.timestamps
    end
  end
end
