class Book < ApplicationRecord
    belongs_to :author
    belongs_to :category
    belongs_to :publisher 
    validates :name, :price, :category_id, :author_id, :publisher_id, presence: true
    validates :description, length: { maximum: 300, minimum: 10 }
    validates :available_quantity, numericality: true
end
