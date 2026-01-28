class AddRoleToJobs < ActiveRecord::Migration[8.1]
  def change
    add_column :jobs, :role, :integer
  end
end
