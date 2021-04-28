class AddCategoryRefAtToDiaries < ActiveRecord::Migration[6.0]
  def change
    add_column :diaries, :category, :foreigh_key, :true
  end
end
