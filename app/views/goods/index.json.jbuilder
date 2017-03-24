json.array!(@goods) do |good|
  json.extract! good, :id, :name, :url, :color, :logo
  json.url good_url(good, format: :json)
end
