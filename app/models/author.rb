class Author < ApplicationRecord
    validates :name, :lastname, presence: true
end
