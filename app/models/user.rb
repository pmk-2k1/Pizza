class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :phone_number, uniqueness: true, format: {with: /\A(03|05|07|08|09)[0-9]{8}\z/i}
  validates :admin, inclusion: [true, false]
  validates :full_name, presence: true, length: {maximum: 50}
  validates :address, presence: true, length: {maximum: 512}

  has_many :bills, dependent: :destroy
  has_one :cart, dependent: :destroy

  def email_required?
    false
  end

  def email_changed?
    false
  end
  def will_save_change_to_email?
    false
  end
end
