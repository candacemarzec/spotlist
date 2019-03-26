class Item < ApplicationRecord

  validates :name, presence: true

  belongs_to :list
  belongs_to :user
  
  def first_name
    user.first_name
  end



end
