class User < ApplicationRecord
    validates :name, :lastname, :age, :tel, :cpf, :sex, :cep, :address, presence: true
    validates :email, format: { with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
    
end
