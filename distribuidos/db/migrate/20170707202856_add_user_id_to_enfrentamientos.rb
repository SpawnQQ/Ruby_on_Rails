class AddUserIdToEnfrentamientos < ActiveRecord::Migration
  def change
    add_reference :enfrentamientos, :user, index: true, foreign_key: true
  end
end
