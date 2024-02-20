class AddMandatoryRequirementsToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :mandatory_requirements, :string, array:true, default: []
  end
end
