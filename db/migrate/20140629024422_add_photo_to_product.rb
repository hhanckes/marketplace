class AddPhotoToProduct < ActiveRecord::Migration
  def change
    add_attachment :product_images, :photo
  end
end
