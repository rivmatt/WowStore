class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :description
      t.boolean :active

      t.timestamps
    end
  end
end
