class Household < ApplicationRecord

  validates :name, presence: true

  has_many :users
  has_many :lists
 

end
