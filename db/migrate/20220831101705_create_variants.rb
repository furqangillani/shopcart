class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.boolean :stock
      t.integer :size
      t.integer :price

      t.timestamps
    end
  end
end
