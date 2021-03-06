class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :image_url
      t.text :detail
      t.integer :fee
      t.integer :rate
      t.text :company_url
      t.timestamps
    end
  end
end
