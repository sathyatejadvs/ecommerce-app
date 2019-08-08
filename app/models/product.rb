class Product
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :price, type: Float
  field :main_image, type: String
  field :thumb_image, type: String

  validates :title, :price, :description, presence: true
  validates :title, uniqueness: true
  validates :price, uniqueness: true
end
