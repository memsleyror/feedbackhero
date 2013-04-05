class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :item, polymorphic: true
      t.references :user

      t.timestamps
    end
    add_index :events, :item_id
  end
end
