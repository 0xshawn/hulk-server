json.array!(@device_pcs) do |device_pc|
  json.extract! device_pc, :id, :brand, :cpu
  json.url device_pc_url(device_pc, format: :json)
end
