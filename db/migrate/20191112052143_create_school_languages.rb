class CreateSchoolLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :school_languages do |t|
      t.references :school, foreign_key: true
      t.references :language, foreign_key: true
      t.timestamps
    end
  end
end
