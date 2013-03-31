class CreateUserprojects < ActiveRecord::Migration
  def change
    create_table :userprojects do |t|
      t.references :user
      t.references :project

      t.timestamps
    end
    add_index :userprojects, :user_id
    add_index :userprojects, :project_id
  end
end
