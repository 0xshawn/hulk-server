json.array!(@devices) do |device|
  json.extract! device, :id, :type, :type_id
  json.url device_url(device, format: :json)
end
