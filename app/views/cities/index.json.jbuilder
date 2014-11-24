json.array!(@cities) do |city|
  json.extract! city, :id, :cityname, :image
  json.url city_url(city, format: :json)
end
