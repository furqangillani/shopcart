class AddVariantToVariantColor < ActiveRecord::Migration[7.0]
  def change
    add_reference :variant_colors, :variant, null: false, foreign_key: true
  end
end
