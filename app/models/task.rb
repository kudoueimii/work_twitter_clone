class Task < ApplicationRecord
  has_many :task_labels
  belong_to :users
end
