class CreateCentralCorreios < ActiveRecord::Migration
  def change
    create_table :central_correios do |t|
      t.string :nome
      t.integer :capacidade

      t.timestamps
    end
  end
end
