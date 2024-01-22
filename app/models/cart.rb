class Cart < ApplicationRecord
  belongs_to :user
  # has_many :products, dependent: :destroy
  has_one :bill, dependent: :destroy

  # validate
  validates :count, numericality: {only_integer: true}
  validates :count_price, numericality: {only_float: true}
end
