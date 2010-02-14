class Cidade < ActiveRecord::Base
  belongs_to :estado
  has_many :clientes
end
