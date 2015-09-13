json.array!(@drug_stores) do |drug_store|
  json.extract! drug_store, :id, :name, :email, :web_page_url, :logo_img_url
  json.url drug_store_url(drug_store, format: :json)
end
