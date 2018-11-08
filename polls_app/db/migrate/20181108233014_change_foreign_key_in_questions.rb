class ChangeForeignKeyInQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :question_id
    add_column :questions, :poll_id, :integer
    add_index :questions, :poll_id
  end
end
