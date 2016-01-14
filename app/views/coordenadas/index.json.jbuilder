json.array!(@coordenadas) do |coordenada|
  json.extract! coordenada, :id, :ot, :lat, :lon
  json.url coordenada_url(coordenada, format: :json)
end
