class Listing < ApplicationRecord
    has_one_attached :picture
    belongs_to :user

    validates :name, :description, :price, presence: true
    validates :price, numericality: { greater_than: 0 }
  
    def thumbnail
       return self.picture.variant(resize: '300x300')
    end
end
