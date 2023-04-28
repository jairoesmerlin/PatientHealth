class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :identifier
      t.integer :quantity
      t.decimal :price
      t.text :instructions
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
