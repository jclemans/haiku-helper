json.array!(@haikus) do |haiku|
  json.extract! haiku, :id, :poem
  json.url haiku_url(haiku, format: :json)
end
