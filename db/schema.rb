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

ActiveRecord::Schema.define(version: 20191009105532) do

  create_table "dndchars", force: :cascade do |t|
    t.string "charname"
    t.string "charrace"
    t.string "charclass"
    t.integer "charlevel"
    t.string "charalign"
    t.integer "charexp"
    t.string "charfaction"
    t.integer "charstr"
    t.integer "chardex"
    t.integer "charcon"
    t.integer "charint"
    t.integer "charwis"
    t.integer "charchar"
    t.integer "charsavestr"
    t.integer "charsavedex"
    t.integer "charsaveint"
    t.integer "charsavewis"
    t.integer "charsavecon"
    t.integer "charsavechar"
    t.integer "characro"
    t.integer "charanimal"
    t.integer "chararcana"
    t.integer "charathletic"
    t.integer "chardeception"
    t.integer "charhistory"
    t.integer "charinsight"
    t.integer "charintim"
    t.integer "charinv"
    t.integer "charmed"
    t.integer "charnature"
    t.integer "charperc"
    t.integer "charperform"
    t.integer "charpersuasion"
    t.integer "charreligion"
    t.integer "charslight"
    t.integer "charstealth"
    t.integer "charsurvive"
    t.text "chardescription"
    t.text "charnotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
