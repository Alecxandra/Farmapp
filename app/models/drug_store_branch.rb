class DrugStoreBranch
  include Mongoid::Document
  include Mongoid::Timestamps
  
  embeds_many :phones
  
  field :name, type: String
  field :address, type: String
  field :latitude, type: String
  field :longitude, type: String
end
