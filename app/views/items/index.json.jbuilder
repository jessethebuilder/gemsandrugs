json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :price, :count, :categories
  json.url item_url(item, format: :json)
end
