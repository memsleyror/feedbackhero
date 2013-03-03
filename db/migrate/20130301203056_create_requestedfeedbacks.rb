class CreateRequestedfeedbacks < ActiveRecord::Migration
  def change
    create_table :requestedfeedbacks do |t|
      t.integer :from_user
      t.references :user
      t.boolean :hide
      t.text :situation
      t.text :positive
      t.text :growth_area
      t.text :request_body
      t.boolean :responded_to
      t.date :responded_date

      t.timestamps
    end
    add_index :requestedfeedbacks, :user_id
  end
end
