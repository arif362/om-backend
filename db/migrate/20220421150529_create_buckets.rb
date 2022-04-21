class CreateBuckets < ActiveRecord::Migration[7.0]
  def change
    create_table :buckets do |t|
      t.integer :user_id
      t.float :progress

      t.timestamps
    end
  end
end
