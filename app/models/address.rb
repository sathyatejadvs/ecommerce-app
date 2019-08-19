class Address
  include Mongoid::Document
  field :name, type: String
  field :phone, type: Integer
  field :email, type: String
  field :address_line1, type: String
  field :address_line2, type: String
end
