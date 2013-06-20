class Job < ActiveRecord::Base
  attr_accessible :description, :title, :premium
  scope :most_recent, order("created_at DESC")
  has_many :comments

  validates :description, presence: true
  validates :title, presence: true
end
