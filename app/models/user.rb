class User < ApplicationRecord
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    validates :name, :lastname, length: { maximum: 50 }
    validates :age, :tel, :cpf, :sex, :cep, :address, :password, :password_confirmation, presence: true
    validates :email, format: { with:  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
end