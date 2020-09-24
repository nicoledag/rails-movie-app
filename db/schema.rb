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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2020_09_24_223633) do
=======
ActiveRecord::Schema.define(version: 2020_09_24_220350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
>>>>>>> 8912cb6ed965812d33f431966ce4a6e7e65a454a

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.integer "movie_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "length"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "showtime_id"
    t.integer "user_id"
<<<<<<< HEAD
    t.integer "credit_card_number", limit: 8
=======
    t.bigint "credit_card_number"
>>>>>>> 8912cb6ed965812d33f431966ce4a6e7e65a454a
    t.date "expiration_date"
    t.integer "total_seats_selected"
    t.integer "total_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "showtimes", force: :cascade do |t|
    t.integer "movie_id"
    t.date "date"
    t.time "start_time"
    t.integer "seats_available"
    t.integer "seat_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
