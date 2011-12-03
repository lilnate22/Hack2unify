class AddSubmitterIdToProjectsActivitiesAndIncentives < ActiveRecord::Migration
  def change
    add_column :projects, :submitter_id, :integer
    add_column :activities, :submitter_id, :integer
    add_column :incentives, :submitter_id, :integer
  end
end
