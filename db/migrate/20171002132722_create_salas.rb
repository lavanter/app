class CreateSalas < ActiveRecord::Migration[5.0]
  def change
    create_table :salas do |t|
      t.string :nome
      t.integer :maximo_alunos
      t.belongs_to :instituto, index: true

      t.timestamps
    end
  end
end
