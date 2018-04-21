class Cause < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :articles
  has_many :cause_interests
  has_many :users, through: :cause_interests

  validates :name, presence: true
  validates :description, presence: true

end
