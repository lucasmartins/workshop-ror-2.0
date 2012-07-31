class CreatePrioridades < ActiveRecord::Migration
  def change
    create_table :prioridades do |t|
      t.string :nome

      t.timestamps
    end
  end
end
