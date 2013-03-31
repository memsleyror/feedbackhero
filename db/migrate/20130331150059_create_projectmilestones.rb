class CreateProjectmilestones < ActiveRecord::Migration
  def change
    create_table :projectmilestones do |t|
      t.string :projectmilestone_name
      t.date :projectmilestone_date
      t.references :project

      t.timestamps
    end
    add_index :projectmilestones, :project_id
  end
end
