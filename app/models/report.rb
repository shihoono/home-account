class Report < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :price, presence: true, numericality: {only_integer: true}, length: { in: 1..11 }
  validates :point, presence: true, numericality: {only_integer: true}, length: { in: 1..11 }
end
