class CreateElencos < ActiveRecord::Migration[7.0]
  def change
    create_table :elencos do |t|
      t.references :atore, null: false, foreign_key: true
      t.references :filme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
