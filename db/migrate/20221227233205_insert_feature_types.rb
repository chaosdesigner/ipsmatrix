# frozen_string_literal: true

class InsertFeatureTypes < ActiveRecord::Migration[7.0]
  def up
    FeatureType.create(description: 'numeric')
    FeatureType.create(description: 'selection')
  end

  def down
    FeatureType.delete_all
  end
end
