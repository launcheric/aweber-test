class Event < ApplicationRecord
  belongs_to :cause

  validates :feed_url, presence: true
end
