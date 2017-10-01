class CreatePeriodos < ActiveRecord::Migration[5.0]
  def change
    create_table :periodos do |t|
      t.text :sigla
      t.text :nome

      t.timestamps
    end
  end
end
