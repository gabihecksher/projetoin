class Author < ApplicationRecord
    has_many :books, dependent: :destroy
    validates :name, :lastname, presence: true
end
