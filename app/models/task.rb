class Task < ApplicationRecord
  validates :title, length: { maximum: 50 }, presence: true
  validates :content, length: { maximum: 1000 }, presence: true
  validates :deadline, :priority, :status, presence: true
end
