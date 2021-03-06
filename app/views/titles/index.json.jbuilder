json.array!(@titles) do |title|
  json.extract! title, :id, :name, :url, :color, :logo
  json.url title_url(title, format: :json)
end
