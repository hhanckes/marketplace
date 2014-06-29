json.array!(@product_stock_sizes) do |product_stock_size|
  json.extract! product_stock_size, :id, :product_id, :stock, :size, :color
  json.url product_stock_size_url(product_stock_size, format: :json)
end
