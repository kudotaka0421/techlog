class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rate
      t.string :content_good
      t.string :content_bad
      t.references :school, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
