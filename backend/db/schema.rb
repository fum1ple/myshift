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

ActiveRecord::Schema[7.0].define(version: 2024_05_13_120420) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "incomes", force: :cascade do |t|
    t.integer "month"
    t.integer "year"
    t.decimal "amount"
    t.decimal "goal_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.bigint "workplace_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workplace_id"], name: "index_shifts_on_workplace_id"
  end

  create_table "workplaces", force: :cascade do |t|
    t.string "name"
    t.integer "hourly_rate"
    t.integer "transport_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "shifts", "workplaces"
end
