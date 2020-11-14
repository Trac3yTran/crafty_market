class Listing < ApplicationRecord
    has_one_attached :picture
    belongs_to :user

    validates :name, :description, :price, presence: true
    validates :price, numericality: { greater_than: 0 }
  

end
