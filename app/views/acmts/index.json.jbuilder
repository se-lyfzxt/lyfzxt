json.array!(@acmts) do |acmt|
  json.extract! acmt, :id, :attraction_id, :user_id, :content
  json.url acmt_url(acmt, format: :json)
end
