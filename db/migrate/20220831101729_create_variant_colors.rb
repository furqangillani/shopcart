class CreateVariantColors < ActiveRecord::Migration[7.0]
  def change
    create_table :variant_colors do |t|
      t.string :name

      t.timestamps
    end
  end
end
