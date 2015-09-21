class DrugStore
  include Mongoid::Document
  include Mongoid::Timestamps
  
  embeds_many :phones
  has_many :drug_store_branches
  
  field :name, type: String
  field :email, type: String
  field :web_page_url, type: String
  field :logo_img_url, type: String
end
