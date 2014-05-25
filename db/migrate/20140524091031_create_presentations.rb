class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.string :title
      t.integer :employer_id
      t.boolean :publish , :default =>false

      t.timestamps
    end
  end
end
