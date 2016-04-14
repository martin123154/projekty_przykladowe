json.array!(@spektakls) do |spektakl|
  json.extract! spektakl, :id, :tytul, :rezyser, :premiera
  json.url spektakl_url(spektakl, format: :json)
end
