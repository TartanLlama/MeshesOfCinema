class AddPowerToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :power, :integer
  end
end
