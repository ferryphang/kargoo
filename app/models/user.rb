class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :address
  before_create :set_email_password

  private

  def set_email_password
    self.email = "user#{SecureRandom.hex(10)}@kargoo.id"
    word = Devise.friendly_token.first(10)
    self.password = word
    self.password_confirmation = word
    debugger
  end
end
