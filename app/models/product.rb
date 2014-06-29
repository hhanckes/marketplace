class Product < ActiveRecord::Base
  belongs_to :store
  has_many :product_images
  has_and_belongs_to_many :product_categories
  has_many :product_stock_sizes
  
  accepts_nested_attributes_for :product_images, :allow_destroy => true
	accepts_nested_attributes_for :product_stock_sizes, :allow_destroy => true
	
  validates :name, presence: true, :uniqueness => {:scope => :store_id}
  validates :price, presence: true
  
end
