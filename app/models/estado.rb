class Estado < ActiveRecord::Base
  has_many :cidades
  has_many :clientes
end
