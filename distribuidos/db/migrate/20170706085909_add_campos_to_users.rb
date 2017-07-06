class AddCamposToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, default: "seller"
    add_column :users, :estado, :string, default: "disponible"
  end
end
