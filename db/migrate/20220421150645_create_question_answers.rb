class CreateQuestionAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :question_answers do |t|
      t.integer :bucket_id
      t.integer :question_id
      t.integer :user_id
      t.string :answer

      t.timestamps
    end
  end
end
