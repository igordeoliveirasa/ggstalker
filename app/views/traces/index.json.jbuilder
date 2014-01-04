json.array!(@traces) do |trace|
  json.extract! trace, :id, :data
  json.url trace_url(trace, format: :json)
end
