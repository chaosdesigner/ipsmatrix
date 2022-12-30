# frozen_string_literal: true

class CreateStates < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.references :character, null: false, foreign_key: true
      t.references :entity, null: false, foreign_key: true
      t.references :sex, null: false, foreign_key: true
      t.float :value_min
      t.float :value_max
      t.string :image

      t.timestamps
    end
  end
end
