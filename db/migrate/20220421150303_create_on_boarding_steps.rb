class CreateOnBoardingSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :on_boarding_steps do |t|
      t.string :title
      t.boolean :is_published, default: false

      t.timestamps
    end
  end
end
