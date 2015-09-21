json.array!(@drug_store_branches) do |drug_store_branch|
  json.extract! drug_store_branch, :id, :name, :address, :latitude, :longitude
  json.url drug_store_drug_store_branch_url([@drug_store, drug_store_branch], format: :json)
end
