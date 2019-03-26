class Item < ApplicationRecord

  validates :name, presence: true

  belongs_to :list
  belongs_to :user


  # def friendly_need_by_date
  #   need_by_date.strftime("%m/%d/%Y")
  # end


end
