class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  before_create :default_role
  
  def default_role
    self.role = 'guest'
  end

  def name
    "#{first_name} #{last_name}".strip
  end
end
