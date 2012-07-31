class AddPrecoToSelo < ActiveRecord::Migration
  def change
    add_column :selos, :preco, :float
  end
end
