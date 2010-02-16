class CreateAnimais < ActiveRecord::Migration
  def self.up
    create_table :animais do |t|
      t.string :nome
      t.integer :cliente_id

      t.timestamps
    end
  end

  def self.down
    drop_table :animais
  end
end
