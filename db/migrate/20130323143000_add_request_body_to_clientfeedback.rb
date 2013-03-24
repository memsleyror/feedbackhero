class AddRequestBodyToClientfeedback < ActiveRecord::Migration
  def change
    add_column :clientfeedbacks, :request_body, :text
  end
end
