class ProjectMembership < ActiveRecord::Base
  belongs_to :actor
  belongs_to :project
end
