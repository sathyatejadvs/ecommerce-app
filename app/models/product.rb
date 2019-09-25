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
  validates :price, format: { with:/\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
  
  before_validation :before_validation_method
  after_validation :after_validation_method

  def before_validation_method
    puts "Invoked before validation"
    puts self.title = title.upcase
   end

   def after_validation_method
    if self.errors.any?
      puts "Validation failed when creating a product"
      puts self.errors.messages
    else 
      puts "Invoked after_validation method"
    end
   end

end
