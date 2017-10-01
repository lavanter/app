class CreateCursos < ActiveRecord::Migration[5.0]
  def change
    create_table :cursos do |t|
      t.string :nome
      t.string :sigla
      t.string :ano
      t.belongs_to :instituto, index: true
      t.timestamps
    end
  end
end
