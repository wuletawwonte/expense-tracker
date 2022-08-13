class Category < ApplicationRecord
  belongs_to :user
  has_many :purchases, dependent: :destroy

  validates :icon, presence: true
  validates :name, presence: true
end
