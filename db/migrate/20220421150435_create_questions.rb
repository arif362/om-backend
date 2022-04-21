class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.boolean :is_published, default: false
      t.integer :on_boarding_step_id
      t.float :mark, default: 0.0

      t.timestamps
    end
  end
end
