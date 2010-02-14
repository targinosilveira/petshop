class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string  :nome
      t.string  :rg
      t.string  :cpf_cnpj
      t.string  :endereco
      t.string  :complemento
      t.string  :bairro
      t.string  :cep
      t.integer :estado_id
      t.integer :cidade_id
      t.string  :telefone_residencial
      t.string  :telefone_trabalho
      t.string  :celular
      t.string  :celular_secundario
      t.string  :email
      t.string  :twitter
      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
