class CreateTrends < ActiveRecord::Migration
  def change
    create_table :trends do |t|
      t.references :product, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
