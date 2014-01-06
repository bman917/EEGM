json.array!(@items) do |item|
  json.extract! item, :id, :supplier_id, :name
  json.url item_url(item, format: :json)
end
