class AddCompanyToJobs < ActiveRecord::Migration[8.1]
  def change
    add_column :jobs, :company, :string
  end
end
