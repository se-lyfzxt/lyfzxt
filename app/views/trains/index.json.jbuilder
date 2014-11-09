json.array!(@trains) do |train|
  json.extract! train, :id, :trainno, :src_id, :dst_id, :time, :price
  json.url train_url(train, format: :json)
end
