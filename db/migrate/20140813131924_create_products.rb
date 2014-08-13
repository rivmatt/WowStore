class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.boolean :visible
      t.references :store, index: true

      t.timestamps
    end
  end
end
