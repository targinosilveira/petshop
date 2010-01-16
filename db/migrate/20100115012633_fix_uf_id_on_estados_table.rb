class FixUfIdOnEstadosTable < ActiveRecord::Migration
  def self.up
    add_column :clientes, :estado_id, :integer
    remove_column :clientes, :uf_id
  end

  def self.down
    remove_column :clientes, :estado_id
  end
end
