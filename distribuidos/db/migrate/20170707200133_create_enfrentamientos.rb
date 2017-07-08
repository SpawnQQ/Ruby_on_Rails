class CreateEnfrentamientos < ActiveRecord::Migration
  def change
    create_table :enfrentamientos do |t|
      t.string :nombre_rival
      t.time :duracion_partida
      t.integer :numero_jugadas
      t.string :resultado
      t.date :fecha

      t.timestamps null: false
    end
  end
end
