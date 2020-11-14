class Listing < ApplicationRecord
    has_one_attached :picture


    validates_presence_of :name, :description, :price
    validates :name, format: { with: /^[a-zA-Z0-9]*$/, :multiline => true, message: "should only contain alpha-numeric characters" }
    validates :price, numericality: { greater_than: 0 }
    validates :description, length: { maximum: 300, too_long: "300 character limit, please shorten your description"}
  
end
