class AddRespondedDateToClientfeedback < ActiveRecord::Migration
  def change
    add_column :clientfeedbacks, :responded_date, :date
  end
end
