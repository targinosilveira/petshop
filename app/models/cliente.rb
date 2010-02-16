class Cliente < ActiveRecord::Base
  require 'my_lib'

  belongs_to :cidade
  belongs_to :estado
  belongs_to :user

  validates_presence_of     :nome,                                         :message => "É preciso informar um nome para o cliente."
  validates_presence_of     :cpf_cnpj,                                     :message => "É preciso infirmar um CPF/CNPJ para o cliente."
  validate :valida_cpf_cnpj
  validates_presence_of     :estado_id,                                    :message => "É preciso informar o estado do cliente."
  validates_presence_of     :email,                                        :message => "É preciso informar um e-mail para o cliente."
  validates_presence_of     :celular,                                      :message => "É preciso informar o celular do cliente."

def valida_cpf_cnpj
  if cpf_cnpj.length <= 11
    errors.add(:cpf_cnpj, "Número de CPF inválido.") if check_cpf(self.cpf_cnpj) == false
  elsif cpf_cnpj.length >= 12
    errors.add(:cpf_cnpj, "Número de CNPJ inválido.") if check_cnpj(self.cpf_cnpj) == false
  end
end

end
