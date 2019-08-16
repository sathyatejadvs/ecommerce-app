class Product
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :price, type: Float
  field :main_image, type: String
  field :thumb_image, type: String

  mount_uploader :main_image, ImageUploader
  mount_uploader :thumb_image, ImageUploader

  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :price, uniqueness: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }

end
