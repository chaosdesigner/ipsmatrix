# frozen_string_literal: true

class AddOrderToCharacter < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :order, :integer
  end
end
