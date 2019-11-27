class Review < ActiveRecord::Migration[5.2]
  def change
    change_column_null :reviews, :rate,  null: false
    change_column_null :reviews, :content_good,  null: false
    change_column_null :reviews, :content_bad,  null: false
  end
end


