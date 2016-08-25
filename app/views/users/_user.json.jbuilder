json.extract! user, :id, :name, :lastname, :age, :email, :tel, :cpf, :sex, :cep, :address, :adm, :created_at, :updated_at
json.url user_url(user, format: :json)