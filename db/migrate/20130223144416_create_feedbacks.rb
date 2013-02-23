class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :from_user
      t.references :user
      t.boolean :hide
      t.text :situation
      t.text :positive
      t.text :growth_area

      t.timestamps
    end
    add_index :feedbacks, :user_id
  end
end
