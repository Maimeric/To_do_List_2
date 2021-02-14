class Task < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :status, inclusion: { in: %w(New Progress Done) },
            presence: true
  # belongs_to :user
end
