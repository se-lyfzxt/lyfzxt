json.array!(@routes) do |route|
  json.extract! route, :id, :city_id, :route
  json.url route_url(route, format: :json)
end
