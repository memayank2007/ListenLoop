class AddIsAdminToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :isadmin, :boolean ,:default => false
  end
end
