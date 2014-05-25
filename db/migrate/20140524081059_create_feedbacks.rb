class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :employee_id
      t.string :client_name
      t.text :message
      t.string :location
      t.attachment :logo

      t.timestamps
    end
  end
end
