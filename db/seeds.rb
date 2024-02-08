# db/seeds.rb
require 'csv'

# Load data from products.csv file
CSV.foreach(Rails.root.join("db/products.csv"), headers: true) do |row|
  category = Category.find_or_create_by(name: row["category"])

  category.products.create(
    title: row["name"],
    description: row["description"],
    price: row["price"],
    stock_quantity: row["stock quantity"]
  )
end
