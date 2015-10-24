class Product < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :locations

  validates_presence_of :title, :middle_price, :product_image
  #has_attached_file :attachment, :default_url => "/images/missing.png"
  has_attached_file :product_image, :default_url => "/images/missing.png"

  validates_attachment_content_type :product_image, :content_type => ["image/jpeg", "image/gif", "image/png"]
  validates_attachment_size :product_image, :in => 0..1.megabytes
end
