json.array!(@congressmembers) do |congressmember|
  json.extract! congressmember, :id, :first_name, :last_name, :party, :state
  json.url congressmember_url(congressmember, format: :json)
end
