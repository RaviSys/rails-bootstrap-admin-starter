class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates :first_name, :last_name, presence: true

  before_create :default_role

  def default_role
    unless role.present?
      role = 'guest'
    end
  end

  def name
    "#{first_name} #{last_name}".strip.titleize
  end

  def admin?
    role == 'admin'
  end
end
