json.array!(@keepers) do |keeper|
  json.extract! keeper, :first, :last, :team, :year, :keeper_year
  json.url keeper_url(keeper, format: :json)
end
