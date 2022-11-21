# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_20_220730) do
  create_table "atores", force: :cascade do |t|
    t.string "nome"
    t.integer "ano_nascimento"
    t.string "emaisl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.string "conteudo"
    t.integer "filme_id", null: false
    t.boolean "aprovado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["filme_id"], name: "index_comentarios_on_filme_id"
  end

  create_table "elencos", force: :cascade do |t|
    t.integer "atore_id", null: false
    t.integer "filme_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["atore_id"], name: "index_elencos_on_atore_id"
    t.index ["filme_id"], name: "index_elencos_on_filme_id"
  end

  create_table "filmes", force: :cascade do |t|
    t.string "titulo"
    t.integer "ano_lancamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.integer "comentario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comentario_id"], name: "index_logs_on_comentario_id"
  end

  add_foreign_key "comentarios", "filmes"
  add_foreign_key "elencos", "atores"
  add_foreign_key "elencos", "filmes"
  add_foreign_key "logs", "comentarios"
end
