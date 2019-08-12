class ChangeColumnIpAddress < ActiveRecord::Migration[5.2]
  def change
    change_column :sessions, :ip_address, :string
  end
end
