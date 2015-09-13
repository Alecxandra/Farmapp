class Phone
  include Mongoid::Document
  
  embedded_in :drug_store
  embedded_in :drug_store_branch
  
  field :phone_number, type: String
end
