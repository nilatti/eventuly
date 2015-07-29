json.array!(@events) do |event|
  json.extract! event, :id, :start_time, :end_time, :location, :organization_id
  json.url event_url(event, format: :json)
end
