class Item < ApplicationRecord

  validates :name, presence: true

  belongs_to :list, optional: true
  belongs_to :user, optional: true
  
  # def first_name
  #   user.first_name
  # end



end
