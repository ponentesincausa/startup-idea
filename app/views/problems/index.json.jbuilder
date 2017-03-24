json.array!(@problems) do |problem|
  json.extract! problem, :id, :name, :url, :color, :logo
  json.url problem_url(problem, format: :json)
end
