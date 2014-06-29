class AddMissingFieldsToStore < ActiveRecord::Migration
  def change
    add_attachment :users, :avatar
    add_attachment :stores, :logo
    add_column :stores, :store_status_id, :integer
  end
end
