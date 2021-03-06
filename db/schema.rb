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

ActiveRecord::Schema.define(version: 2020_08_08_163937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "import_file_lines", force: :cascade do |t|
    t.bigint "import_file_id"
    t.string "line"
    t.integer "transaction_type"
    t.date "date_occurency"
    t.float "value"
    t.string "cpf"
    t.string "card"
    t.time "occurency_hour"
    t.string "owner"
    t.string "store_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["import_file_id"], name: "index_import_file_lines_on_import_file_id"
  end

  create_table "import_files", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "status"
    t.integer "count_lines", default: 0
    t.string "file_name", null: false
  end

end
