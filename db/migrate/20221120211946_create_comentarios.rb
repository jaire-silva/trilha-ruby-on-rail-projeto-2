class CreateComentarios < ActiveRecord::Migration[7.0]
  def change
    create_table :comentarios do |t|
      t.string :conteudo
      t.references :filme, null: false, foreign_key: true
      t.boolean :aprovado

      t.timestamps
    end
  end
end
