class Job < ActiveRecord::Base

  belongs_to :company

  validates :title, presence: true
  validates :company, presence: true
  validates :url, presence: true, uniqueness: true
end
