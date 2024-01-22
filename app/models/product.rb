class Product < ApplicationRecord

  # belongs_to :cart
  mount_uploader :image_product, ImageProductUploader

  enum :category, [:"Gà rán",:"Mỳ ý", :"Pizza", :"Nước", :"Combo"]
  enum :size, [:"Nhỏ",:"Vừa",:"Lớn"]

  # validate
  validates :category, :name, :description,:size, presence: true
  validates :price_prodcut, numericality: {only_float: true}

end
