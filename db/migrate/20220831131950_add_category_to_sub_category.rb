class AddCategoryToSubCategory < ActiveRecord::Migration[7.0]
  def change
    add_reference :sub_categories, :category, null: false, foreign_key: true
  end
end
