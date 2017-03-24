json.array!(@trends) do |trend|
  json.extract! trend, :id, :name, :url, :color, :logo
  json.url trend_url(trend, format: :json)
end
