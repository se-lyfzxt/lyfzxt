json.array!(@planes) do |plane|
  json.extract! plane, :id, :planeno, :src_id, :dst_id, :time, :price
  json.url plane_url(plane, format: :json)
end
