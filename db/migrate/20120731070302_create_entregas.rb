class CreateEntregas < ActiveRecord::Migration
  def change
    create_table :entregas do |t|
      t.string :remetente
      t.string :destinatario
      t.text :conteudo
      t.references :selo
      t.boolean :entrege

      t.timestamps
    end
    add_index :entregas, :selo_id
  end
end
