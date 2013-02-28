class CreateUserBadges < ActiveRecord::Migration
  def change
    create_table :user_badges do |t|
      t.references :badge
      t.references :user
      t.boolean :hide
      t.integer :from_user

      t.timestamps
    end
    add_index :user_badges, :badge_id
    add_index :user_badges, :user_id
  end
end
