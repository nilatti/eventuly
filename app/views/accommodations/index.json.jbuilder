json.array!(@accommodations) do |accommodation|
  json.extract! accommodation, :id, :name, :max_males, :max_females, :max_neutral, :nightly_cost, :weekly_cost
  json.url accommodation_url(accommodation, format: :json)
end
