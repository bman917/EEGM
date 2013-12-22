json.array!(@phones) do |phone|
  json.extract! phone, :id, :supplier_id, :number
  json.url phone_url(phone, format: :json)
end
