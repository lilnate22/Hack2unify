class RemoveSponsorFromActivityIdAddProjectIdToActivity < ActiveRecord::Migration
  def up
   add_column :activities, :project_id, :integer
   remove_column :activities, :sponsor_id
  end

  def down
   add_column :activities, :sponsor_id, :integer
   remove_column :activities, :project_id
  end
end
