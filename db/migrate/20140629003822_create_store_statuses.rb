class CreateStoreStatuses < ActiveRecord::Migration
  def change
    create_table :store_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
