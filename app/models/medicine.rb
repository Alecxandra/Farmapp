class Medicine
  include Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :brand
  
  field :name, type: String
  field :description, type: String
end
