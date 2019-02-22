class Item < ApplicationRecord

  validates :name, presence: true

  belongs_to :list, optional:true


end
