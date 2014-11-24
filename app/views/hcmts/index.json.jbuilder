json.array!(@hcmts) do |hcmt|
  json.extract! hcmt, :id, :hotel_id, :user_id, :content
  json.url hcmt_url(hcmt, format: :json)
end
