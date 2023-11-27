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

ActiveRecord::Schema[7.0].define(version: 2023_11_26_233848) do
  create_table "areas", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "asignacions", force: :cascade do |t|
    t.date "date"
    t.string "descripcion"
    t.integer "user_id", null: false
    t.integer "departamento_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_asignacions_on_departamento_id"
    t.index ["user_id"], name: "index_asignacions_on_user_id"
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formularios", force: :cascade do |t|
    t.integer "noAuditoria"
    t.string "proceso"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "asignacion_id", null: false
    t.integer "departamento_id", null: false
    t.index ["asignacion_id"], name: "index_formularios_on_asignacion_id"
    t.index ["departamento_id"], name: "index_formularios_on_departamento_id"
  end

  create_table "formulariotwos", force: :cascade do |t|
    t.string "evidencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "asignacion_id", null: false
    t.integer "departamento_id", null: false
    t.string "evidenciatwo"
    t.index ["asignacion_id"], name: "index_formulariotwos_on_asignacion_id"
    t.index ["departamento_id"], name: "index_formulariotwos_on_departamento_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "role_id", null: false
    t.integer "departamento_id", null: false
    t.index ["departamento_id"], name: "index_users_on_departamento_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "asignacions", "departamentos"
  add_foreign_key "asignacions", "users"
  add_foreign_key "formularios", "asignacions"
  add_foreign_key "formularios", "departamentos"
  add_foreign_key "formulariotwos", "asignacions"
  add_foreign_key "formulariotwos", "departamentos"
  add_foreign_key "users", "departamentos"
  add_foreign_key "users", "roles"
end
