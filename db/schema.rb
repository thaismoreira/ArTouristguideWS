# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170523232534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estados", force: :cascade do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ponto_turisticos", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "cep"
    t.string   "cidade"
    t.integer  "estado_id"
    t.integer  "tipo_ponto_turistico_id"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "raio"
    t.float    "azimuthe"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["estado_id"], name: "index_ponto_turisticos_on_estado_id", using: :btree
    t.index ["tipo_ponto_turistico_id"], name: "index_ponto_turisticos_on_tipo_ponto_turistico_id", using: :btree
  end

  create_table "tipo_ponto_turisticos", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "ponto_turisticos", "estados"
  add_foreign_key "ponto_turisticos", "tipo_ponto_turisticos"
end
