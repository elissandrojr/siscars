class CreateCarros < ActiveRecord::Migration[5.2]
  def change
    create_table :carros do |t|
      t.string :proprietario
      t.integer :exercicio
      t.string :placa
      t.string :renavam
      t.string :chassi
      t.string :modelo
      t.integer :ano

      t.timestamps
    end
  end
end
