class AddShowInKeyToStates < ActiveRecord::Migration[7.0]
  def change
    add_column :states, :show_in_key, :boolean, :default => true
  end
end
