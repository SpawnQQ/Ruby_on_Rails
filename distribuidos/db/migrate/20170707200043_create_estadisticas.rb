class CreateEstadisticas < ActiveRecord::Migration
  def change
    create_table :estadisticas do |t|
      t.integer :clasificacion , default: 0
      t.integer :victorias, default: 0
      t.integer :derrotas , default: 0
      t.integer :empates, default: 0

      t.timestamps null: false
    end
  end
end
