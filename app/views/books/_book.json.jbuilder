json.extract! book, :id, :name, :price, :available_quantity, :category_id, :author_id, :publisher_id, :description, :created_at, :updated_at
json.url book_url(book, format: :json)