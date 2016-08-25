class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.integer :age
      t.string :email
      t.string :tel
      t.string :cpf
      t.string :sex
      t.string :cep
      t.string :address
      t.boolean :adm

      t.timestamps
    end
  end
end
