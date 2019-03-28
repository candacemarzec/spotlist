class User < ApplicationRecord

  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
 
  

  belongs_to :household, optional: true
  has_many :items
  has_many :lists, optional: true, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end


end
