# frozen_string_literal: true

class CreateSexes < ActiveRecord::Migration[7.0]
  def change
    create_table :sexes do |t|
      t.string :description_en
      t.string :description_cz

      t.timestamps
    end
  end
end
