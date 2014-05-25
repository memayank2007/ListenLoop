class ChangeEmployerIdToEmployeeId < ActiveRecord::Migration
  def change
    rename_column :presentations ,:employer_id , :employee_id
  end
end
