json.array!(@bcmts) do |bcmt|
  json.extract! bcmt, :id, :blog_id, :user_id, :content
  json.url bcmt_url(bcmt, format: :json)
end
