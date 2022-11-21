class CreateAtores < ActiveRecord::Migration[7.0]
  def change
    create_table :atores do |t|
      t.string :nome
      t.integer :ano_nascimento
      t.string :emaisl

      t.timestamps
    end
  end
end
