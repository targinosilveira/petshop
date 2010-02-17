class Animal < ActiveRecord::Base
  belongs_to :cliente

  validates_presence_of     :nome,                                         :message => "É preciso informar um nome para o animal."
  validates_uniqueness_of   :nome,                                         :message => "Nome já cadastrado no sistema."

end
