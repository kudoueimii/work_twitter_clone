class Task < ApplicationRecord
  has_many :task_labels
  belongs_to :users
end
