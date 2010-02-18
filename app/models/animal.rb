class Animal < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :tipo
  belongs_to :raca

  validates_presence_of     :nome,                                         :message => "É preciso informar um nome para o animal."
  validates_uniqueness_of   :nome,                                         :message => "Nome já cadastrado no sistema."
  validates_presence_of     :tipo_id,                                      :message => "É preciso informar o tipo do aniimal no sistema.."

end
