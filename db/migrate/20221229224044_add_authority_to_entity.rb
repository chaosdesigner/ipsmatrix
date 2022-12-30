# frozen_string_literal: true

class AddAuthorityToEntity < ActiveRecord::Migration[7.0]
  def change
    add_column :entities, :authority, :string
  end
end
