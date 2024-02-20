class AddSalaryRangeToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :salary_range, :json
  end
end
