class CreateSchoolLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :school_locations do |t|
      t.references :school, foreign_key: true
      t.references :location, foreign_key: true
      t.timestamps
    end
  end
end
