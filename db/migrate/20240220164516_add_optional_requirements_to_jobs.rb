class AddOptionalRequirementsToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :optional_requirements, :string, array:true, default: []
  end
end
