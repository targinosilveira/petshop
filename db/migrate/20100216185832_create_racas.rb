class CreateRacas < ActiveRecord::Migration
  def self.up
    create_table :racas do |t|
      t.string :nome
      t.integer :tipo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :racas
  end
end
