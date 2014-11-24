json.array!(@blogs) do |blog|
  json.extract! blog, :id, :user_id, :city_id, :title, :content, :image
  json.url blog_url(blog, format: :json)
end
