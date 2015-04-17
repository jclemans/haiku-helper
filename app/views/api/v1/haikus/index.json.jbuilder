json.array! @haikus do |haiku|
  json.extract! haiku, :id, :content
end
