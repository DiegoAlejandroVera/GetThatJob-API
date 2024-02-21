class CreateUserJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :user_jobs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true
      t.boolean :is_following, default: false
      t.boolean :applied, default: false

      t.timestamps
    end
  end
end
