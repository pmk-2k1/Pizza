class Bill < ApplicationRecord
  belongs_to :user
  belongs_to :cart

  enum :payment_method, [:"Tiền mặt", :"Chuyển khoản", :"Ví điện tử"]

  # validate
  validates :total, numericality: {only_float: true}
  validates :payment_method, presence: true

end
