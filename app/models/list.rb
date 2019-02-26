class List < ApplicationRecord

  validates :store_name, presence: true

  belongs_to :user
  has_many :items, dependent: :destroy

  belongs_to :household, optional: true


end
