# frozen_string_literal: true

class InsertSexes < ActiveRecord::Migration[7.0]
  def up
    Sex.create(description_en: 'both', description_cz: 'bez rozdílu')
    Sex.create(description_en: 'males', description_cz: 'samečci')
    Sex.create(description_en: 'females', description_cz: 'samičky')
  end

  def down
    Sex.delete_all
  end
end
