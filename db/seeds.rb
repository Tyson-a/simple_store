# db/seeds.rb
require 'faker'

676.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence(word_count: 10),
    price: Faker::Commerce.price(range: 0.01..1000.00),
    stock_quantity: Faker::Number.between(from: 1, to: 100)
  )
end
