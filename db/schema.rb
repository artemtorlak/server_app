# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_27_221828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bandwidths", primary_key: "value_id", id: :serial, force: :cascade do |t|
    t.integer "server_id"
    t.float "value"
    t.text "interface_name"
    t.index ["server_id", "interface_name"], name: "index_bandwidths_on_server_id_and_interface_name", unique: true
  end

  create_table "servers", force: :cascade do |t|
    t.string "name"
  end

end
