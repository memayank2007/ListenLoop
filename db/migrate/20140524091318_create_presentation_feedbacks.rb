class CreatePresentationFeedbacks < ActiveRecord::Migration
  def change
    create_table :presentation_feedbacks do |t|
      t.integer :presentation_id
      t.integer :feedback_id

      t.timestamps
    end
  end
end
