json.array!(@sessions) do |session|
  json.extract! session, :id, :title, :instructor, :when, :max_attendees
  json.url session_url(session, format: :json)
end
