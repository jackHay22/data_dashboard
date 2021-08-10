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

ActiveRecord::Schema.define(version: 2019_08_20_173249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.boolean "super_admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cards", force: :cascade do |t|
    t.string "title"
    t.string "color"
    t.string "goal"
    t.string "value"
    t.string "source"
    t.string "trend"
    t.string "icon"
    t.integer "order"
    t.integer "page_id"
    t.integer "admin_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "percentage_complete", default: 0
    t.string "goal_date"
    t.string "value_date"
    t.string "source_name", default: "Source"
    t.index ["page_id"], name: "index_cards_on_page_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.integer "admin_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "hidden"
  end

  create_table "contents", force: :cascade do |t|
    t.integer "page_id"
    t.string "content_type"
    t.integer "content_id"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "external_graphs", force: :cascade do |t|
    t.integer "admin_id"
    t.integer "page_id"
    t.integer "order"
    t.string "title"
    t.string "external_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "width", default: 12
    t.integer "height", default: 400
    t.index ["page_id"], name: "index_external_graphs_on_page_id"
  end

  create_table "graphs", force: :cascade do |t|
    t.string "title"
    t.string "unit"
    t.integer "page_id"
    t.integer "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "admin_id"
    t.integer "width", default: 12
    t.string "style", default: "spline"
    t.index ["page_id"], name: "index_graphs_on_page_id"
    t.index ["title"], name: "index_graphs_on_title", unique: true
  end

  create_table "lines", force: :cascade do |t|
    t.string "title"
    t.integer "graph_id"
    t.integer "card_id"
    t.index ["graph_id"], name: "index_lines_on_graph_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "name"
    t.text "intro_text"
    t.integer "category_id"
    t.integer "admin_id"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "landing_page"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable"
  end

  create_table "points", force: :cascade do |t|
    t.float "value"
    t.text "notes"
    t.integer "line_id"
    t.integer "admin_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "time"
    t.integer "position"
    t.date "point_date"
    t.index ["line_id"], name: "index_points_on_line_id"
  end

  create_table "tag_joins", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "taggable_id"
    t.integer "taggable_type"
    t.index ["taggable_id", "taggable_type"], name: "index_tag_joins_on_taggable_id_and_taggable_type"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

end
