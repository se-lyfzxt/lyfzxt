json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :hotelname, :attraction_id, :address, :tel, :price
  json.url hotel_url(hotel, format: :json)
end
