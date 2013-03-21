class CreateClientfeedbacks < ActiveRecord::Migration
  def change
    create_table :clientfeedbacks do |t|
      t.string :clientfirst_name
      t.string :clientlast_name
      t.string :client_email
      t.references :user
      t.boolean :hide
      t.text :situation
      t.text :positive
      t.text :growth_area

      t.timestamps
    end
    add_index :clientfeedbacks, :user_id
  end
end
