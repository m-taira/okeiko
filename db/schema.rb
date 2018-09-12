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

ActiveRecord::Schema.define(version: 2018_09_12_041536) do

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "カテゴリ", force: :cascade do |t|
    t.string "name", null: false, comment: "カテゴリ名称"
    t.integer "parent_id", comment: "親ID"
    t.integer "lft", null: false, comment: "左カラム"
    t.integer "rgt", null: false, comment: "右カラム"
    t.integer "depth", default: 0, null: false
    t.integer "children_count", default: 0, null: false, comment: "子の数"
    t.index ["lft"], name: "index_categories_on_lft"
    t.index ["parent_id"], name: "index_categories_on_parent_id"
    t.index ["rgt"], name: "index_categories_on_rgt"
  end

  create_table "schools", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "スクール", force: :cascade do |t|
    t.string "name", null: false, comment: "名称"
    t.text "address", comment: "住所"
    t.string "tel", null: false, comment: "電話番号"
    t.string "fax", comment: "FAX"
    t.string "url", comment: "ホームページURL"
    t.text "map", comment: "地図"
    t.text "access", comment: "アクセス"
    t.bigint "category_id", null: false, comment: "カテゴリ"
    t.integer "min_age", comment: "対象年齢（最小）"
    t.integer "max_age", comment: "対象年齢（最大）"
    t.boolean "opened_sun", comment: "営業日（日）"
    t.boolean "opened_mon", comment: "営業日（月）"
    t.boolean "opened_tue", comment: "営業日（火）"
    t.boolean "opened_wed", comment: "営業日（水）"
    t.boolean "opened_thu", comment: "営業日（木）"
    t.boolean "opened_fri", comment: "営業日（金）"
    t.boolean "opened_sat", comment: "営業日（土）"
    t.text "opened_day", comment: "営業日"
    t.text "opened_time", comment: "営業時間"
    t.integer "min_price", comment: "料金の目安（最小）"
    t.integer "max_price", comment: "料金の目安（最大）"
    t.text "description", comment: "紹介文"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_schools_on_category_id"
  end

  add_foreign_key "schools", "categories"
end
