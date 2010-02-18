class Tipo < ActiveRecord::Base
  has_many  :racas
  has_many  :animais

  validates_presence_of     :nome,                                         :message => "É preciso informar um nome de tipo de animal."
  validates_uniqueness_of   :nome,                                         :message => "Nome já cadastrado no sistema."

end
