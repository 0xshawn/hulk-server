json.array!(@hosts) do |host|
  json.extract! host, :id, :hostname, :description, :ip, :cpu, :mem, :storage
  json.url host_url(host, format: :json)
end
