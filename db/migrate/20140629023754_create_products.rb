class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :store_id
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
