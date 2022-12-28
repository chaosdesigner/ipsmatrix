class CreateFeatures < ActiveRecord::Migration[7.0]
  def change
    create_table :features do |t|
      t.string :name_en
      t.string :name_cz
      t.integer :order

      t.timestamps
    end
  end
end
