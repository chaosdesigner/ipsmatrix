class UpdateForeignKeysAddOnDeleteConstraint < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :characters, :features
    add_foreign_key :characters, :features, on_delete: :cascade
    remove_foreign_key :characters, :feature_types
    add_foreign_key :characters, :feature_types, on_delete: :cascade
    remove_foreign_key :states, :characters
    add_foreign_key :states, :characters, on_delete: :cascade
    remove_foreign_key :states, :entities
    add_foreign_key :states, :entities, on_delete: :cascade    
    remove_foreign_key :states, :sexes
    add_foreign_key :states, :sexes, on_delete: :cascade 
  end
end
