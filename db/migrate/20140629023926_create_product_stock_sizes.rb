class CreateProductStockSizes < ActiveRecord::Migration
  def change
    create_table :product_stock_sizes do |t|
      t.integer :product_id
      t.integer :stock
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end
