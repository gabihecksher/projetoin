class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :author_id
      t.float :price
      t.integer :available_quantity
      t.integer :category_id
      t.integer :author_id
      t.integer :publisher_id
      t.text :description

      t.timestamps
    end
  end
end
