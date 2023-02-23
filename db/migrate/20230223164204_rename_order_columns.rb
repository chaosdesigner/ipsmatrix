class RenameOrderColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :characters, :order, :seq
    rename_column :entities, :order, :seq
    rename_column :features, :order, :seq
  end
end
