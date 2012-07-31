class CreateSelos < ActiveRecord::Migration
  def change
    create_table :selos do |t|
      t.string :nome
      t.references :prioridade

      t.timestamps
    end
    add_index :selos, :prioridade_id
  end
end
