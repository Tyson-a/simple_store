class Product < ApplicationRecord
  belongs_to :category
  validates :title, presence: true
  validates :price, presence: true, numericality: true
  validates :stock_quantity, presence: true, numericality: { only_integer: true }
end
