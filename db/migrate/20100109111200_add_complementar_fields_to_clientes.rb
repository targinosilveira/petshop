class AddComplementarFieldsToClientes < ActiveRecord::Migration
  def self.up
    add_column :clientes, :complemento, :string
    add_column :clientes, :bairro, :string
    add_column :clientes, :cep, :string
    add_column :clientes, :uf_id, :integer
    add_column :clientes, :cidade_id, :integer
    add_column :clientes, :celular, :string
    add_column :clientes, :celular_secundario, :string
    add_column :clientes, :telefone_residencial, :string
    add_column :clientes, :telefone_trabalho, :string
    add_column :clientes, :outro_telefone, :string
    add_column :clientes, :email, :string
    add_column :clientes, :twitter, :string
    add_column :clientes, :user_id, :integer
    add_column :clientes, :rg, :string
    add_column :clientes, :cpf_cnpj, :string
    add_index(:clientes, :user_id)
    add_index(:clientes, :nome)
  end

  def self.down
    remove_column :clientes, :complemento
    remove_column :clientes, :bairro
    remove_column :clientes, :cep
    remove_column :clientes, :uf_id
    remove_column :clientes, :cidade_id
    remove_column :clientes, :celular
    remove_column :clientes, :celular_secundario
    remove_column :clientes, :telefone_residencial
    remove_column :clientes, :telefone_trabalho
    remove_column :clientes, :outro_telefone
    remove_column :clientes, :email
    remove_column :clientes, :twitter
    remove_column :clientes, :user_id
    remove_column :clientes, :rg
    remove_column :clientes, :cpf_cnpj
    add_index(:clientes, :user_id)
    add_index(:clientes, :nome)
  end
end
