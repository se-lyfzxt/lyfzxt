json.array!(@requests) do |request|
  json.extract! request, :id, :user_id, :city_id, :time, :number, :note
  json.url request_url(request, format: :json)
end
