class Event < ApplicationRecord
  belongs_to :cause
  
  validates :name, presence: true
  validates :feed_url, presence: true
end
