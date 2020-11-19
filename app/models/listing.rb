class Listing < ApplicationRecord
    has_one_attached :picture
    belongs_to :user
    has_many :orders
    
# validations to check the data submitted in the New Listing form
#  Name, description, and price are not blank
# Price is a positive number

    validates :name, :description, :price, presence: true
    validates :price, numericality: { greater_than: 0 }
    validates_acceptance_of :picture

end
