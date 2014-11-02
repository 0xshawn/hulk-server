json.array!(@device_mobiles) do |device_mobile|
  json.extract! device_mobile, :id, :platform, :model
  json.url device_mobile_url(device_mobile, format: :json)
end
