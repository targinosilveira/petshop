class AddFieldsTipoIdRacaIdToAnimaisTable < ActiveRecord::Migration
  def self.up
    add_column :animais, :tipo_id, :integer
    add_column :animais, :raca_id, :integer
  end

  def self.down
    remove_column :animais, :tipo_id
    remove_column :animais, :raca_id
  end
end
