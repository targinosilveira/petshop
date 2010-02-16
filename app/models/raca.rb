class Raca < ActiveRecord::Base
  belongs_to :tipo

  validates_presence_of     :nome,                                         :message => "É preciso informar um nome de uma raça."
  validates_uniqueness_of   :nome,                                         :message => "Nome já cadastrado no sistema."
  validates_presence_of     :tipo_id,                                      :message => "É preciso informa a qual tipo de animail essa raça pertence. "

end
