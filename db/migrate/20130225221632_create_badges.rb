class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :badge_name
      t.string :badge_image

      t.timestamps
    end
  end
end
