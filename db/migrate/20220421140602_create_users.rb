class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.boolean :is_active, default: false
      t.boolean :is_verified, default: false
      t.float :profile_completeness, default: 0.0

      t.timestamps
    end
  end
end
