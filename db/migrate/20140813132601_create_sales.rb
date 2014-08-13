class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :customer, index: true
      t.references :product, index: true
      t.integer :quantity
      t.decimal :sub_total
      t.decimal :shipping_price
      t.decimal :tax
      t.decimal :total
      t.integer :status

      t.timestamps
    end
  end
end
