json.array!(@attractions) do |attraction|
  json.extract! attraction, :id, :attracname, :city_id, :image
  json.url attraction_url(attraction, format: :json)
end
