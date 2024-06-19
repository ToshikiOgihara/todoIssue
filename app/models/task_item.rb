class TaskItem < ApplicationRecord
  validates :title, presence: true
end
