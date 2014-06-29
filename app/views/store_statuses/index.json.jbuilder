json.array!(@store_statuses) do |store_status|
  json.extract! store_status, :id, :name, :description
  json.url store_status_url(store_status, format: :json)
end
