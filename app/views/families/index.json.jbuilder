json.array!(@families) do |family|
  json.extract! family, :id, :last_name
  json.url family_url(family, format: :json)
end
