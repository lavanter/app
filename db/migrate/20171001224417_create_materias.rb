class CreateMaterias < ActiveRecord::Migration[5.0]
  def change
    create_table :materias do |t|
      t.string :nome
      t.string :sigla
      t.integer :creditos
      t.string :periodo
      t.belongs_to :instituto, index: true
      t.timestamps
    end
  end
end
