json.array!(@device_laptops) do |device_laptop|
  json.extract! device_laptop, :id, :brand, :cpu, :ram, :disk, :graphics
  json.url device_laptop_url(device_laptop, format: :json)
end
