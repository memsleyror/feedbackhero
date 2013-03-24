class AddRespondedToToClientfeedback < ActiveRecord::Migration
  def change
    add_column :clientfeedbacks, :responded_to, :boolean
  end
end
