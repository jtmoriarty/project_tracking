class Task < ActiveRecord::Base
  attr_accessible :task_description, :task_name, :task_priority
end
