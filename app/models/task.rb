class Task < ApplicationRecord
  validates :title, length: { maximum: 50 }, presence: true
  validates :content, length: { maximum: 1000 }, presence: true
  validates :deadline, :priority, :status, presence: true

  belongs_to :user, optional: true
  has_many :task_labels, dependent: :destroy
  has_many :labels, through: :task_labels
end
