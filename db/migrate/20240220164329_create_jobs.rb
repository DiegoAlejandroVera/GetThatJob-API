class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :category, default: 0
      t.text :description
      t.boolean :is_started, default: true
      t.integer :job_type, default: 0

      t.timestamps
    end
  end
end
