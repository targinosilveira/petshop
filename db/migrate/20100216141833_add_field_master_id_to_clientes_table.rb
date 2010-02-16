class AddFieldMasterIdToClientesTable < ActiveRecord::Migration
  def self.up
    add_column :clientes, :master_id, :integer
  end

  def self.down
    remove_column :clientes, :master_id
  end
end
