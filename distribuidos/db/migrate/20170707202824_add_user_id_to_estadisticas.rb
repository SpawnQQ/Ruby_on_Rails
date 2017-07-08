class AddUserIdToEstadisticas < ActiveRecord::Migration
  def change
    add_reference :estadisticas, :user, index: true, foreign_key: true
  end
end
