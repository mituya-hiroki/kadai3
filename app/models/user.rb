class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books,dependent: :destroy
  has_one :post_image

  attachment :profile_image

  #以下を追加
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: {in: 2..20}
  validates :introduction, length: {maximum: 50}

# 登録時にメールアドレスを不要とする
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
