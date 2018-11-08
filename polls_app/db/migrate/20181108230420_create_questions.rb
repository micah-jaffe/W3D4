class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :text, null: false
      t.integer :question_id, null: false
      t.timestamps
    end
    add_index :questions, :question_id
  end
end
