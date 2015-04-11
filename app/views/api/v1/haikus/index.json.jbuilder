json.array!(@haikus) do |haiku|
  json.extract! haiku, :id, :content
  json.url haiku_url(haiku, format: :json)
end
