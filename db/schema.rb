# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160106024432) do

  create_table "companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.string   "phone",      limit: 255
    t.string   "contact",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "reward",      limit: 4
    t.string   "description", limit: 255
    t.integer  "company_id",  limit: 4
    t.integer  "location_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "referrals", force: :cascade do |t|
    t.string   "first_name",               limit: 255
    t.string   "last_name",                limit: 255
    t.string   "email",                    limit: 255
    t.string   "phone1",                   limit: 255
    t.string   "phone2",                   limit: 255
    t.string   "city",                     limit: 255
    t.string   "state",                    limit: 255
    t.string   "zipcode",                  limit: 255
    t.string   "address",                  limit: 255
    t.string   "gender",                   limit: 255
    t.string   "ethnicity",                limit: 255
    t.integer  "age",                      limit: 4
    t.integer  "income",                   limit: 4
    t.string   "height",                   limit: 255
    t.string   "weight",                   limit: 255
    t.string   "company_name",             limit: 255
    t.string   "company_phone",            limit: 255
    t.string   "company_address",          limit: 255
    t.string   "company_email",            limit: 255
    t.string   "best_time_to_reach",       limit: 255
    t.string   "perferred_contact_method", limit: 255
    t.string   "extra_field_1",            limit: 255
    t.string   "extra_field_2",            limit: 255
    t.string   "extra_field_3",            limit: 255
    t.string   "extra_field_4",            limit: 255
    t.string   "extra_field_5",            limit: 255
    t.integer  "user_id",                  limit: 4
    t.integer  "offer_id",                 limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",        limit: 4
    t.integer  "taggable_id",   limit: 4
    t.string   "taggable_type", limit: 255
    t.integer  "tagger_id",     limit: 4
    t.string   "tagger_type",   limit: 255
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name",           limit: 255
    t.integer "taggings_count", limit: 4,   default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
