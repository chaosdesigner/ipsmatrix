# frozen_string_literal: true

class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.references :feature, null: false, foreign_key: true
      t.references :feature_type, null: false, foreign_key: true
      t.string :description_en
      t.string :description_cz

      t.timestamps
    end
  end
end
