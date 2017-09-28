class CreateInstitutos < ActiveRecord::Migration[5.0]
  def change
    create_table :institutos do |t|
      t.string :sigla
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
