class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :name_en
      t.string :name_cz
      t.integer :order

      t.timestamps
    end
  end
end
