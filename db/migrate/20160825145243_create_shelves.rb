class CreateShelves < ActiveRecord::Migration[5.0]
  def change
    create_table :shelves do |t|
      t.string :books
      t.integer :user_id

      t.timestamps
    end
  end
end
