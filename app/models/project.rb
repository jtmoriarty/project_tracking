class Project < ActiveRecord::Base
  attr_accessible :project_description, :project_name, :project_status
end
