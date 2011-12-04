class CreateProjectMemberships < ActiveRecord::Migration
  def change
    create_table :project_memberships do |t|
      t.boolean :admin
      t.integer :actor_id
      t.integer :project_id
      t.timestamps
    end
  end
end
