class Brand
  include Mongoid::Document
  include Mongoid::Timestamps
  
  has_many :medicines
  
  field :name, type: String
end
