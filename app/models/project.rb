class Project < ActiveRecord::Base
  acts_as_voteable
  #make_flaggable
  has_many :activities
  has_many :project_memberships
  has_many :actors, :through => :project_memberships
  belongs_to :submitter, :class_name => 'Actor'

  def popularity
    plusminus
  end
end
