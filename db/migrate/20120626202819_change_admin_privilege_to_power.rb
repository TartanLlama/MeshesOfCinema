class ChangeAdminPrivilegeToPower < ActiveRecord::Migration
  def up
    rename_column :admins, :privilege, :power
  end

  def down
    rename_column :admins, :power, :privilege
  end
end
