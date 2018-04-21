class CauseInterest < ApplicationRecord
  belongs_to :cause
  belongs_to :user

  validates :cause_id, presence: true
  validates :user_id, presence: true

end
