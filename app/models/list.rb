class List < ApplicationRecord

  validates :store_name, presence: true

  belongs_to :user, optional:true
  has_many :items


end
