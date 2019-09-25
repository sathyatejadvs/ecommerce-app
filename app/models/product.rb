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
  validates :price, format: { with:/\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }, uniqueness: true
  
  #Creating an object
  before_validation :before_validation_method
  after_validation :after_validation_method
  before_save :before_saving_an_object
  before_create :before_create
  after_create :after_create 
  after_save :after_saving

  # updating an object
  before_update :set_price

  # Destroying an object
  before_destroy :deleting_last_record

  def before_validation_method
    puts "Invoked before validation and changed title to #{self.title = title.upcase}"
  end

  def after_validation_method
    if self.errors.any?
      puts "Validation failed when creating a product"
      puts self.errors.messages
    else 
      puts "Invoked after_validation method"
    end
  end

  def before_saving_an_object
    puts "Invoked before_save and the product with #{self.title} is yet to be saved"
  end

  def before_create
    puts "Invoked before create method"
    puts "Title is changed to #{self.title = "#{title.downcase}"}"
  end

  def after_create
    puts "Invoked After create method"
  end

  def after_saving
    puts "invoking after saving method"
  end

  #updating the price
  def set_price
    puts "update price: "
    self.price = gets  
    puts "Updated price: #{self.price}, \nTitle: #{self.title}, \nDescription: #{self.description}"
  end

  #destroy an object
  def deleting_last_record
    puts "Deleted the product with title #{self.title}"
  end
end
